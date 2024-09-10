import 'package:banx/core/domain/entities/password_authentication.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'verify_otp_event.dart';

part 'verify_otp_state.dart';

@injectable
class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final AuthenticationRepository authenticationRepository;

  VerifyOtpBloc({
    required this.authenticationRepository,
  }) : super(VerifyOtpValidated()) {
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
    on<ResendCode>(_onResendCode);
  }

  Future<void> _onResendCode(
    ResendCode event,
    Emitter<VerifyOtpState> emit,
  ) async {
    try {
      final response = await authenticationRepository.sendOtp(
        phoneNumber: event.phoneNumber,
      );
      response.when(
          success: (success) => emit(VerifyOtpValidated()),
          partialSuccess: (message) => emit(VerifyOtpFailure(message)),
          networkError: (exception) =>
              emit(VerifyOtpFailure(exception.toString())));
    } catch (e) {
      emit(VerifyOtpFailure(e.toString()));
    }
  }

  Future<void> _onVerifyOtpSubmitted(
    VerifyOtpSubmitted event,
    Emitter<VerifyOtpState> emit,
  ) async {
    if (event.otp.length != event.codeLength) {
      emit(const OtpError('کد پیامک شده را وارد نمایید'));
    } else {
      emit(VerifyOtpInProgress());
      try {
        final response = await authenticationRepository.verifyOtp(
          phoneNumber: event.phoneNumber,
          otp: event.otp,
        );
        response.when(
            success: (success) => {
                  // get profile
                  // handle deeplink
                  // emit DeepLinkLanding
                },
            partialSuccess: (message) => emit(VerifyOtpFailure(message)),
            networkError: (exception) =>
                emit(VerifyOtpFailure(exception.toString())));
      } catch (e) {
        emit(VerifyOtpFailure(e.toString()));
      }
    }
  }
}
