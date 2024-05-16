import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:login/domain/repository/login_repository.dart';

part 'phone_event.dart';
part 'phone_state.dart';

class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  final LoginRepository loginRepository;

  PhoneBloc({
    required this.loginRepository,
  }) : super(PhoneValidated()) {
    on<PhoneSubmitted>(_onPhoneSubmitted);
  }

  Future<void> _onPhoneSubmitted(
    PhoneSubmitted event,
    Emitter<PhoneState> emit,
  ) async {
    emit(
      PhoneSuccess(
          phoneNumber: event.phoneNumber,
          sessionId: "sample session id",
          numCells: 5),
    );
    /* emit(PhoneInProgress());
    try {
      final response = await loginRepository.login(event.phoneNumber,"");

      response.when(
          success: (success) => emit(PhoneSuccess()),
          partialSuccess: (message) => emit(PhoneFailure(message)),
          networkError: (exception) =>
              emit(PhoneFailure(exception.toString())));
    } catch (_) {
      emit(const PhoneFailure('on handled error'));
    }*/
  }
}
