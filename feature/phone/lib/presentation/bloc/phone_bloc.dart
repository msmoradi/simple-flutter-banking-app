import 'package:bloc/bloc.dart';
import 'package:domain/repository/authentication_repository.dart';
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
      final response =
          await authenticationRepository.sendOtp(event.phoneNumber);
      response.when(
          success: (success) => emit(PhoneSuccess(
              phoneNumber: success.phoneNumber,
              sessionId: success.sessionId,
              numCells: success.numCells)),
          partialSuccess: (message) => emit(PhoneFailure(message)),
          networkError: (exception) =>
              emit(PhoneFailure(exception.toString())));
    } catch (_) {
      emit(const PhoneFailure('on handled error'));
    }
  }
}
