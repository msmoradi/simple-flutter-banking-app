import 'dart:async';

import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/utils/extension/strings.dart';
import 'package:banx/core/utils/localauth/local_auth_helper.dart';
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
  final LocalAuthHelper localAuthentication;

  VerifyPasswordBloc({
    required this.authenticationRepository,
    required this.tokenRepository,
    required this.profileRepository,
    required this.localAuthentication,
  }) : super(VerifyPasswordInProgress()) {
    on<VerifyPasswordSubmitted>(_onVerifyPasswordSubmitted);
    on<BiometricsSubmitted>(_onBiometricsSubmitted);
    on<Init>(_onInit);
    add(const Init());
  }

  FutureOr<void> _onInit(
    Init event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    final showBiometric = await enableBiometrics();
    final profile = await profileRepository.getLocalProfile();
    try {
      emit(VerifyPasswordInitial(
        showBiometric: showBiometric,
        firstName: profile?.firstName ?? 'تست',
        photoUrl: profile?.photoUrl ?? 'https://i.pravatar.cc/300',
      ));
    } catch (e) {
      emit(VerifyPasswordFailure(e.toString()));
    }
  }

  Future<bool> enableBiometrics() async {
    final savedPassword = await tokenRepository.getPassword();
    final canCheckBiometrics = await localAuthentication.canCheckBiometrics;
    final biometricEnable = !savedPassword.isNullOrEmpty && canCheckBiometrics;
    return biometricEnable;
  }

  Future<void> _onBiometricsSubmitted(
    BiometricsSubmitted event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    emit(const VerifyPasswordInitial(showBiometric: true));
    try {
      bool isAuthenticated = await localAuthentication.authenticate();

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
          .refresh(refreshToken: refreshToken)
          .then((value) async {
        if (value.isSuccess) {
          return await authenticationRepository.postPassword(
              password: event.password);
        } else {
          return value;
        }
      });
      response.when(
          success: (response) {
            if (response is UserProfileEntity) {
              emit(
                DeepLinkLanding(
                    deeplink: response.routingButtonEntity!.deeplink),
              );
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
