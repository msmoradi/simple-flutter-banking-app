import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:signup/domain/repository/sign_up_repository.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required this.signUpRepository,
  }) : super(SignUpInProgress()) {
    on<SignUpSubmitted>(_onSubmitted);
  }

  final SignUpRepository signUpRepository;

  Future<void> _onSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    if (state is SignUpValidated) {
      emit(SignUpInProgress());

      try {
        final response = await signUpRepository.signUp(
          event.firstName,
          event.lastName,
          event.email,
          event.password,
          true,
        );

        response.when(
            success: (success) => emit(SignUpSuccess()),
            partialSuccess: (message) => emit(SignUpFailure(message)),
            networkError: (exception) =>
                emit(SignUpFailure(exception.toString())));
      } catch (_) {
        emit(const SignUpFailure('on handled error'));
      }
    }
  }
}
