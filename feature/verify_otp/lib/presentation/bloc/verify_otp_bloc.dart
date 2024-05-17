import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../domain/repository/verify_otp_repository.dart';

part 'verify_otp_event.dart';
part 'verify_otp_state.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final VerifyOtpRepository loginRepository;

  VerifyOtpBloc({
    required this.loginRepository,
  }) : super(VerifyOtpValidated()) {
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
  }

  Future<void> _onVerifyOtpSubmitted(
    VerifyOtpSubmitted event,
    Emitter<VerifyOtpState> emit,
  ) async {
    emit(VerifyOtpSuccess());
   /* emit(VerifyOtpInProgress());
    try {
      final response = await loginRepository.login(
        event.email,
        event.password,
      );

      response.when(
          success: (success) => emit(VerifyOtpSuccess()),
          partialSuccess: (message) => emit(VerifyOtpFailure(message)),
          networkError: (exception) =>
              emit(VerifyOtpFailure(exception.toString())));
    } catch (_) {
      emit(const VerifyOtpFailure('on handled error'));
    }*/
  }
}
