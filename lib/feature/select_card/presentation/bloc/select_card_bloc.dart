import 'dart:async';

import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/card_types_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:banx/feature/select_card/presentation/bloc/select_card_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'select_card_event.dart';

@injectable
class SelectCardBloc extends Bloc<SelectCardEvent, SelectCardState> {
  final CardRepository cardRepository;
  final AddressRepository addressRepository;

  SelectCardBloc(
      {required this.cardRepository, required this.addressRepository})
      : super(const SelectCardValidated()) {
    on<Init>(_onInit);
    on<ActionClick>(_onActionClick);
    add(Init());
  }

  FutureOr<void> _onActionClick(
    ActionClick event,
    Emitter<SelectCardState> emit,
  ) async {
    emit(const ButtonInProgress());

    try {
      final response = await addressRepository.getAddress();
      response.when(
          success: (entity) {
            if (entity.size == 0) {
              emit(
                CheckPostalCode(cardTypeId: event.cardTypeId),
              );
            } else {
              emit(
                SelectAddress(
                    addressList: entity.content, cardTypeId: event.cardTypeId),
              );
            }
          },
          partialSuccess: (message) => emit(SelectCardFailure(message)),
          networkError: (exception) =>
              emit(SelectCardFailure(exception.toString())));
    } catch (e) {
      emit(SelectCardFailure(e.toString()));
    }
  }

  Future<void> _onInit(
    Init event,
    Emitter<SelectCardState> emit,
  ) async {
    emit(const SelectCardInProgress());
    try {
      final responses = await cardRepository.types();
      responses.when(
          success: (entity) {
            final card = entity.cardTypes.first;
            emit(
              SelectCardSuccess(
                  title: card.title,
                  id: card.id,
                  description: card.description,
                  priceLabel: card.priceLabel),
            );
          },
          partialSuccess: (message) => emit(SelectCardFailure(message)),
          networkError: (exception) =>
              emit(SelectCardFailure(exception.toString())));
    } catch (e) {
      emit(SelectCardFailure(e.toString()));
    }
  }
}
