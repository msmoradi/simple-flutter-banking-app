import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'identity_event.dart';
part 'identity_state.dart';

class IdentityBloc extends Bloc<IdentityEvent, IdentityState> {
  IdentityBloc() : super(IdentityValidated()) {
    on<IdentitySubmitted>(_onIdentitySubmitted);
  }

  Future<void> _onIdentitySubmitted(
    IdentitySubmitted event,
    Emitter<IdentityState> emit,
  ) async {
    emit(
      IdentitySuccess(
          phoneNumber: event.nationalId,
          sessionId: "sample session id",
          numCells: 5),
    );
/* emit(IdentityInProgress());
    try {
      final response = await loginRepository.login(event.phoneNumber,"");

      response.when(
          success: (success) => emit(IdentitySuccess()),
          partialSuccess: (message) => emit(IdentityFailure(message)),
          networkError: (exception) =>
              emit(IdentityFailure(exception.toString())));
    } catch (_) {
      emit(const IdentityFailure('on handled error'));
    }*/
  }
}
