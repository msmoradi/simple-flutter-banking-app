import 'package:bloc/bloc.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'phone_event.dart';
part 'phone_state.dart';

class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  final AuthenticationRepository authenticationRepository;

  PhoneBloc({
    required this.authenticationRepository,
  }) : super(PhoneValidated()) {
    on<PhoneSubmitted>(_onPhoneSubmitted);
  }

  Future<void> _onPhoneSubmitted(
    PhoneSubmitted event,
    Emitter<PhoneState> emit,
  ) async {
    emit(PhoneInProgress());
    try {
      final response = await authenticationRepository.sendOtp(
          phoneNumber: event.phoneNumber);
      response.when(
          success: (response) {
            if (response.needSignup) {
              emit(
                Identity(
                    phoneNumber: event.phoneNumber,
                    needReferralCode: response.needReferralCode!),
              );
            } else {
              emit(
                VerifyOtpSuccess(
                    phoneNumber: event.phoneNumber,
                    expiresIn: response.expiresIn!,
                    codeLength: response.codeLength!),
              );
            }
          },
          partialSuccess: (message) => emit(PhoneFailure(message)),
          networkError: (exception) =>
              emit(PhoneFailure(exception.toString())));
    } catch (e) {
      emit(PhoneFailure(e.toString()));
    }
  }
}
