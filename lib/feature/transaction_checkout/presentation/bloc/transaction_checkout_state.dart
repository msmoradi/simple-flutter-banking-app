import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_checkout_state.freezed.dart';

enum TransactionCheckoutStatus { initial, failure, loading }

@freezed
class TransactionCheckoutState with _$TransactionCheckoutState {
  const factory TransactionCheckoutState({
    @Default(TransactionCheckoutStatus.initial)
    TransactionCheckoutStatus status,
    @Default('') String errorMessage,
    @Default('') String conversionFee,
    @Default(DropdownChipType.rialDeposit) DropdownChipType sourceDepositType,
    required UserInfo sourceUserInfo,
    @Default(DropdownChipType.rialDeposit)
    DropdownChipType destinationDepositType,
    required UserInfo destinationUserInfo,
  }) = _TransactionCheckoutState;
}
