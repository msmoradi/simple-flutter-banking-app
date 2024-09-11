import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'add_address_event.dart';

part 'add_address_state.dart';

@injectable
class AddAddressBloc
    extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRepository addressRepository;

  AddAddressBloc({
    required this.addressRepository,
  }) : super(AddAddressValidated()) {
    on<AddAddressSubmitted>(_onAddAddressSubmitted);
  }

  Future<void> _onAddAddressSubmitted(
    AddAddressSubmitted event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(AddAddressInProgress());
    try {
      final response =
          await addressRepository.getInquiry(postalCode: event.postalCode);
      response.when(
          success: (entity) => emit(
                AddressSelected(address: entity),
              ),
          partialSuccess: (message) => emit(AddAddressFailure(message)),
          networkError: (exception) =>
              emit(AddAddressFailure(exception.toString())));
    } catch (e) {
      emit(AddAddressFailure(e.toString()));
    }
  }
}
