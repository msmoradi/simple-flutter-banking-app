import 'package:bloc/bloc.dart';
import 'package:domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'verify_password_event.dart';
part 'verify_password_state.dart';

class VerifyPasswordBloc
    extends Bloc<VerifyPasswordEvent, VerifyPasswordState> {
  final AuthenticationRepository authenticationRepository;

  VerifyPasswordBloc({
    required this.authenticationRepository,
  }) : super(VerifyPasswordValidated()) {
    on<VerifyPasswordSubmitted>(_onVerifyPasswordSubmitted);
  }

  Future<void> _onVerifyPasswordSubmitted(
    VerifyPasswordSubmitted event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    emit(VerifyPasswordInProgress());
    try {
      final response = await authenticationRepository.refresh(
        refreshToken: event.refreshToken,
        password: event.password,
      );
      response.when(
          success: (success) => emit(VerifyPasswordSuccess()),
          partialSuccess: (message) => emit(VerifyPasswordFailure(message)),
          networkError: (exception) =>
              emit(VerifyPasswordFailure(exception.toString())));
    } catch (e) {
      emit(VerifyPasswordFailure(e.toString()));
    }
  }
}
