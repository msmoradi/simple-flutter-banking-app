import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'confirm_password_event.dart';
part 'confirm_password_state.dart';

@injectable
class ConfirmPasswordBloc
    extends Bloc<ConfirmPasswordEvent, ConfirmPasswordState> {
  final AuthenticationRepository authenticationRepository;
  final ProfileRepository profileRepository;

  ConfirmPasswordBloc({
    required this.authenticationRepository,
    required this.profileRepository,
  }) : super(ConfirmPasswordValidated()) {
    on<ConfirmPasswordSubmitted>(_onConfirmPasswordSubmitted);
  }

  Future<void> _onConfirmPasswordSubmitted(
    ConfirmPasswordSubmitted event,
    Emitter<ConfirmPasswordState> emit,
  ) async {
    emit(ConfirmPasswordInProgress());
    try {
      final response = await authenticationRepository
          .password(password: event.password)
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
          partialSuccess: (message) => emit(ConfirmPasswordFailure(message)),
          networkError: (exception) =>
              emit(ConfirmPasswordFailure(exception.toString())));
    } catch (e) {
      emit(ConfirmPasswordFailure(e.toString()));
    }
  }
}
