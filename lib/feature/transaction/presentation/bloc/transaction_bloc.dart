
import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'transaction_event.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc()
      : super(const TransactionState(status: TransactionStatus.loading)) {
    on<SelectTypeEvent>(_onSelectType);
    on<AddValueEvent>(_onAddValue);
    on<RemoveValueEvent>(_onRemoveValue);
  }

  void _onSelectType(SelectTypeEvent event, Emitter<TransactionState> emit) {
    if (state.selectedType != event.selectedType) {
      emit(state.copyWith(value: ''));
    }
    emit(state.copyWith(selectedType: event.selectedType));
  }

  void _onAddValue(AddValueEvent event, Emitter<TransactionState> emit) {
    final currentValue = state.value;
    String updatedValue;

    if (event.key == '.') {
      updatedValue =
          currentValue.contains('.') ? currentValue : currentValue + event.key;
    } else {
      updatedValue = currentValue + event.key;
    }

    emit(state.copyWith(value: _formatWithCommas(updatedValue)));
  }

  void _onRemoveValue(RemoveValueEvent event, Emitter<TransactionState> emit) {
    final currentValue = state.value;
    if (currentValue.isNotEmpty) {
      final updatedValue = currentValue.substring(0, currentValue.length - 1);
      emit(state.copyWith(value: _formatWithCommas(updatedValue)));
    }
  }

  String _formatWithCommas(String value) {
    String numericValue = value.replaceAll(',', '');
    if (numericValue.isEmpty) return '';
    if (numericValue.contains('.')) {
      List<String> parts = numericValue.split('.');
      final formatter = NumberFormat.decimalPattern();
      String formattedIntPart = formatter.format(int.tryParse(parts[0]) ?? 0);
      return parts.length > 1
          ? '$formattedIntPart.${parts[1]}'
          : formattedIntPart;
    } else {
      final formatter = NumberFormat.decimalPattern();
      return formatter.format(int.tryParse(numericValue) ?? 0);
    }
  }
}
