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
    state.whenOrNull(
      selectCardSuccess: (id, _, __, ___, addressList) {
        if (addressList.isEmpty) {
          emit(const AddAddress());
        } else {
          emit(
            SelectAddress(addressList: addressList, cardTypeId: id),
          );
        }
      },
    );
  }

  Future<void> _onInit(
    Init event,
    Emitter<SelectCardState> emit,
  ) async {
    emit(const SelectCardInProgress());
    try {
      final responses = await Future.wait([
        cardRepository.types(),
        addressRepository.getAddress(),
      ]);

      final cardTypesResponse =
          responses[0] as EntityWrapper<CardTypesResponseEntity>;

      final getAddressResponse =
          responses[1] as EntityWrapper<GenericListEntity<AddressEntity>>;

      if (cardTypesResponse.isSuccess && getAddressResponse.isSuccess) {
        final card =
            (cardTypesResponse as SuccessEntityWrapper<CardTypesResponseEntity>)
                .data
                .cardTypes[0];

        final addressList = (getAddressResponse
                as SuccessEntityWrapper<GenericListEntity<AddressEntity>>)
            .data
            .content;

        emit(
          SelectCardSuccess(
              title: card.title,
              id: card.id,
              description: card.description,
              priceLabel: card.priceLabel,
              addressList: addressList),
        );
      } else {
        emit(const SelectCardFailure('Error fetching data.'));
      }
    } catch (e) {
      emit(SelectCardFailure(e.toString()));
    }
  }
}
