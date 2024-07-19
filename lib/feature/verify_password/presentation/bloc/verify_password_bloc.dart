import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/utils/extension/strings.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

part 'verify_password_event.dart';
part 'verify_password_state.dart';

@injectable
class VerifyPasswordBloc
    extends Bloc<VerifyPasswordEvent, VerifyPasswordState> {
  final AuthenticationRepository authenticationRepository;
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;
  final LocalAuthentication localAuthentication;

  VerifyPasswordBloc({
    required this.authenticationRepository,
    required this.tokenRepository,
    required this.profileRepository,
    required this.localAuthentication,
  }) : super(VerifyPasswordValidated()) {
    on<VerifyPasswordSubmitted>(_onVerifyPasswordSubmitted);
    on<BiometricsSubmitted>(_onBiometricsSubmitted);
  }

  Future<void> _onBiometricsSubmitted(
    BiometricsSubmitted event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    try {
      bool isAuthenticated = await localAuthentication.authenticate(
        localizedReason: 'Please authenticate to access your password',
        options: const AuthenticationOptions(
          biometricOnly: true,
        ),
      );

      if (isAuthenticated) {
        String? password = await tokenRepository.getPassword();
        if (password.isNullOrEmpty) {
          emit(const VerifyPasswordFailure('Password is not exist'));
        } else {
          emit(PinExist(password!));
        }
      } else {
        emit(const VerifyPasswordFailure('Authentication failed'));
      }
    } catch (e) {
      emit(VerifyPasswordFailure(e.toString()));
    }
  }

  Future<void> _onVerifyPasswordSubmitted(
    VerifyPasswordSubmitted event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    emit(VerifyPasswordInProgress());
    try {
      final refreshToken = await tokenRepository.getRefreshToken() ?? "";
      final response = await authenticationRepository
          .refresh(refreshToken: refreshToken, password: event.password)
          .then((value) async {
        if (value.isSuccess) {
          return await profileRepository.getProfile();
        } else {
          return value;
        }
      });
      response.when(
          success: (response) {
            if (response is UserProfileEntity) {
              switch (response.landingPage) {
                case LandingPageEntity.home:
                  emit(HomeLanding());
                case LandingPageEntity.waiting:
                  emit(WaitingLanding());
                case LandingPageEntity.faceDetection:
                  emit(FaceDetectionLanding());
                case LandingPageEntity.cardOrdering:
                  emit(CardOrderingLanding());
              }
            }
          },
          partialSuccess: (message) => emit(VerifyPasswordFailure(message)),
          networkError: (exception) =>
              emit(VerifyPasswordFailure(exception.toString())));
    } catch (e) {
      emit(VerifyPasswordFailure(e.toString()));
    }
  }
}
