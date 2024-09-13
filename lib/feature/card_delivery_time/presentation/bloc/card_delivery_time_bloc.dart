import 'dart:async';

import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'card_delivery_time_event.dart';

part 'card_delivery_time_state.dart';

@injectable
class CardDeliveryTimeBloc
    extends Bloc<CardDeliveryTimeEvent, CardDeliveryTimeState> {
  final CardRepository cardRepository;

  CardDeliveryTimeBloc({
    required this.cardRepository,
  }) : super(CardDeliveryTimeValidated()) {
    on<CardDeliveryTimeSubmitted>(_onCardDeliveryTimeSubmitted);
  }

  Future<void> _onCardDeliveryTimeSubmitted(
    CardDeliveryTimeSubmitted event,
    Emitter<CardDeliveryTimeState> emit,
  ) async {
    emit(CardDeliveryTimeInProgress());
    try {
      final response = await cardRepository.orders(
        addressId: event.addressId,
        typeId: event.typeId,
        cardShippingTimeSlotId: event.cardShippingTimeSlotId,
      );
      response.when(
          success: (entity) {
            if (entity is UserProfileEntity) {
              emit(
                DeepLinkLanding(deeplink: entity.routingButtonEntity!.deeplink),
              );
            }
          },
          partialSuccess: (message) => emit(CardDeliveryTimeFailure(message)),
          networkError: (exception) =>
              emit(CardDeliveryTimeFailure(exception.toString())));
    } catch (e) {
      emit(CardDeliveryTimeFailure(e.toString()));
    }
  }
}
