import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_destination_state.freezed.dart';

enum TransactionDestinationStatus { initial, failure, loading }

@freezed
class TransactionDestinationState with _$TransactionDestinationState {
  const factory TransactionDestinationState({
    @Default(TransactionDestinationStatus.initial) TransactionDestinationStatus status,
    @Default('') String errorMessage,
  }) = _TransactionDestinationState;
}
