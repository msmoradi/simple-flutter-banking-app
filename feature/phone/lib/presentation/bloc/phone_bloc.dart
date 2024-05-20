import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:phone/domain/repository/authentication_repository.dart';

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
      final response = await authenticationRepository.login(event.phoneNumber, "");
      response.when(
          success: (success) => emit(PhoneSuccess(
              phoneNumber: success.id, sessionId: success.id, numCells: 5)),
          partialSuccess: (message) => emit(PhoneFailure(message)),
          networkError: (exception) =>
              emit(PhoneFailure(exception.toString())));
    } catch (_) {
      emit(const PhoneFailure('on handled error'));
    }
  }
}
