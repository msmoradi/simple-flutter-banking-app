import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'select_address_event.dart';
part 'select_address_state.dart';

@injectable
class SelectAddressBloc extends Bloc<SelectAddressEvent, SelectAddressState> {
  final AddressRepository addressRepository;

  SelectAddressBloc({
    required this.addressRepository,
  }) : super(SelectAddressValidated()) {
    on<CheckPostalCodeSubmitted>(_onCheckPostalCodeSubmitted);
  }

  Future<void> _onCheckPostalCodeSubmitted(
    CheckPostalCodeSubmitted event,
    Emitter<SelectAddressState> emit,
  ) async {
    emit(SelectAddressInProgress());
    try {
      final response =
          await addressRepository.getInquiry(postalCode: event.postalCode);
      response.when(
          success: (response) {
            emit(
              SelectAddressSuccess(address: response.address),
            );
          },
          partialSuccess: (message) => emit(SelectAddressFailure(message)),
          networkError: (exception) =>
              emit(SelectAddressFailure(exception.toString())));
    } catch (e) {
      emit(SelectAddressFailure(e.toString()));
    }
  }
}
