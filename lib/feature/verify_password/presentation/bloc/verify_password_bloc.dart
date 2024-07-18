import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'verify_password_event.dart';
part 'verify_password_state.dart';

@injectable
class VerifyPasswordBloc
    extends Bloc<VerifyPasswordEvent, VerifyPasswordState> {
  final AuthenticationRepository authenticationRepository;
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;

  VerifyPasswordBloc({
    required this.authenticationRepository,
    required this.tokenRepository,
    required this.profileRepository,
  }) : super(VerifyPasswordValidated()) {
    on<VerifyPasswordSubmitted>(_onVerifyPasswordSubmitted);
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
