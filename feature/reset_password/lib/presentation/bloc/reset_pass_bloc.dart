import 'package:bloc/bloc.dart';
import 'package:domain/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'reset_pass_event.dart';

part 'reset_pass_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(ResetPasswordInProgress()) {
    on<ResetPasswordSubmitted>(_onSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  Future<void> _onSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(ResetPasswordInProgress());
    try {
      // TODO replace with correct functionality
      final password = event.password;
      await _authenticationRepository.logIn(
          username: password, password: password);
      return emit(ResetPasswordSuccess());
    } catch (_) {
      return emit(ResetPasswordFailure());
    }
  }
}
