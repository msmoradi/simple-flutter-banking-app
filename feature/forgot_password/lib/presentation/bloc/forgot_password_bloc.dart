import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:forgot_password/domain/repository/forgot_password_repository.dart';

part 'forgot_password_event.dart';

part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required this.forgotPasswordRepository,
  }) : super(ForgotPasswordProgress()) {
    on<ForgotPasswordSubmitted>(_onForgotPasswordSubmitted);
  }

  final ForgotPasswordRepository forgotPasswordRepository;

  Future<void> _onForgotPasswordSubmitted(
    ForgotPasswordSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(ForgotPasswordProgress());
    await forgotPasswordRepository.forgotPassword(event.email).then((value) {
      value.when(
          success: (success) => emit(ForgotPasswordSuccess()),
          partialSuccess: (message) => emit(ForgotPasswordFailure(message)),
          networkError: (exception) =>
              emit(ForgotPasswordFailure(exception.toString())));
    }, onError: (error) {
      emit(ForgotPasswordFailure(error.toString()));
    });
  }
}
