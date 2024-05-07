import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:login/domain/repository/login_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc({
    required this.loginRepository,
  }) : super(LoginValidated()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginInProgress());
    try {
      final response = await loginRepository.login(
        event.email,
        event.password,
      );

      response.when(
          success: (success) => emit(LoginSuccess()),
          partialSuccess: (message) => emit(LoginFailure(message)),
          networkError: (exception) =>
              emit(LoginFailure(exception.toString())));
    } catch (_) {
      emit(const LoginFailure('on handled error'));
    }
  }
}
