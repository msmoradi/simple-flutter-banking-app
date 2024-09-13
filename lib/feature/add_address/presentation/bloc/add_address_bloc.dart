import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'add_address_event.dart';

part 'add_address_state.dart';

@injectable
class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRepository addressRepository;
  final CardRepository cardRepository;

  AddAddressBloc({
    required this.addressRepository,
    required this.cardRepository,
  }) : super(AddAddressValidated()) {
    on<AddAddressSubmitted>(_onAddAddressSubmitted);
  }

  Future<void> _onAddAddressSubmitted(
    AddAddressSubmitted event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(AddAddressInProgress());
    try {
      final response = await addressRepository
          .postAddress(addressEntity: event.addressEntity)
          .then((entityWrapper) async {
        if (entityWrapper is SuccessEntityWrapper<EmptyEntity>) {
          return await cardRepository.shippingTimeSlots();
        }
        return entityWrapper;
      });
      response.when(
          success: (entity) {
            if (entity is CardShippingTimeSlotsEntity) {
              emit(
                AddressSelected(
                    address: event.addressEntity,
                    cardShippingTimeSlots: entity.cardShippingTimeSlots),
              );
            }
          },
          partialSuccess: (message) => emit(AddAddressFailure(message)),
          networkError: (exception) =>
              emit(AddAddressFailure(exception.toString())));
    } catch (e) {
      emit(AddAddressFailure(e.toString()));
    }
  }
}
