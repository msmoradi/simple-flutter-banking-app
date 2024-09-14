import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_card_state.freezed.dart';

enum SelectCardStatus {
  initial,
  failure,
  pageLoading,
  buttonLoading,
  checkPostalCode,
  selectAddress
}

@freezed
class SelectCardState with _$SelectCardState {

  const factory SelectCardState({
    @Default(SelectCardStatus.pageLoading) SelectCardStatus status,
    @Default('') String errorMessage,
    @Default(0) int cardTypeId,
    @Default([]) List<AddressEntity> addressList,

    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String priceLabel,
  }) = _SelectCardState;
}
