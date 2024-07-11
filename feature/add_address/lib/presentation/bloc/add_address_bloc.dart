import 'package:bloc/bloc.dart';
import 'package:domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AuthenticationRepository authenticationRepository;

  AddAddressBloc({
    required this.authenticationRepository,
  }) : super(AddAddressValidated()) {
    on<CheckPostalCodeSubmitted>(_onCheckPostalCodeSubmitted);
  }

  Future<void> _onCheckPostalCodeSubmitted(
    CheckPostalCodeSubmitted event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(AddAddressInProgress());
    try {
      final response = await authenticationRepository.checkPostalCode(
          postalCode: event.postalCode);
      response.when(
          success: (response) {
            emit(
              AddAddressSuccess(),
            );
          },
          partialSuccess: (message) => emit(AddAddressFailure(message)),
          networkError: (exception) =>
              emit(AddAddressFailure(exception.toString())));
    } catch (e) {
      emit(AddAddressFailure(e.toString()));
    }
  }
}
