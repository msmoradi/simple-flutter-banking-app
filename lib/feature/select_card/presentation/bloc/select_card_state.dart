import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_card_state.freezed.dart';

@freezed
class SelectCardState with _$SelectCardState {
  const factory SelectCardState.selectCardFailure(String message) =
      SelectCardFailure;

  const factory SelectCardState.selectCardInProgress() = SelectCardInProgress;

  const factory SelectCardState.checkPostalCode({
    required int cardTypeId,
  }) = CheckPostalCode;

  const factory SelectCardState.selectAddress({
    required List<AddressEntity> addressList,
    required int cardTypeId,
  }) = SelectAddress;

  const factory SelectCardState.selectCardSuccess({
    required int id,
    required String title,
    required String description,
    required String priceLabel,
    required List<AddressEntity> addressList,
  }) = SelectCardSuccess;

  const factory SelectCardState.selectCardValidated() = SelectCardValidated;
}
