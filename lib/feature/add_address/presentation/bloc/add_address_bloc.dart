import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';

@injectable
class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final ProfileRepository profileRepository;

  AddAddressBloc({
    required this.profileRepository,
  }) : super(AddAddressValidated()) {
    on<CheckPostalCodeSubmitted>(_onCheckPostalCodeSubmitted);
  }

  Future<void> _onCheckPostalCodeSubmitted(
    CheckPostalCodeSubmitted event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(AddAddressInProgress());
    try {
      final response =
          await profileRepository.checkPostalCode(postalCode: event.postalCode);
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
