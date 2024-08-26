import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'card_order_event.dart';

part 'card_order_state.dart';

@injectable
class CardOrderBloc extends Bloc<CardOrderEvent, CardOrderState> {
  final CardRepository cardRepository;

  CardOrderBloc({
    required this.cardRepository,
  }) : super(CardOrderValidated()) {
    on<CardOrderSubmitted>(_onCardOrderSubmitted);
  }

  Future<void> _onCardOrderSubmitted(
    CardOrderSubmitted event,
    Emitter<CardOrderState> emit,
  ) async {
    emit(CardOrderInProgress());
    try {
      final response = await cardRepository.orders(
        addressId: 0,
        typeId: 0,
        cardShippingTimeSlotId: 10,
        label: "label",
      );
      response.when(
          success: (response) {},
          partialSuccess: (message) => emit(CardOrderFailure(message)),
          networkError: (exception) =>
              emit(CardOrderFailure(exception.toString())));
    } catch (e) {
      emit(CardOrderFailure(e.toString()));
    }
  }
}
