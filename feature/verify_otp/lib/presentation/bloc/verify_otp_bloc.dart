import 'package:bloc/bloc.dart';
import 'package:domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'verify_otp_event.dart';
part 'verify_otp_state.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final AuthenticationRepository authenticationRepository;

  VerifyOtpBloc({
    required this.authenticationRepository,
  }) : super(VerifyOtpValidated()) {
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
  }

  Future<void> _onVerifyOtpSubmitted(
    VerifyOtpSubmitted event,
    Emitter<VerifyOtpState> emit,
  ) async {
    emit(VerifyOtpInProgress());
    try {
      final response = await authenticationRepository.verifyOtp(
          event.phoneNumber, event.otp);
      response.when(
          success: (success) => emit(VerifyOtpSuccess()),
          partialSuccess: (message) => emit(VerifyOtpFailure(message)),
          networkError: (exception) =>
              emit(VerifyOtpFailure(exception.toString())));
    } catch (_) {
      emit(const VerifyOtpFailure('on handled error'));
    }
  }
}
