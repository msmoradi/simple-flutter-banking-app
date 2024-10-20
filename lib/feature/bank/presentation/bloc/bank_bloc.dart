import 'dart:async';

import 'package:banx/feature/bank/presentation/bloc/bank_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'bank_event.dart';

@injectable
class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc()
      : super(const BankState(
          status: BankStatus.initial,
          bankCardStatus: BankCardStatus.ordered,
          widgets: [],
          errorMessage: '',
        )) {
    on<BankXClick>(_onBankXClick);
  }

  Future<void> _onBankXClick(BankXClick event, Emitter<BankState> emit) async {
    try {
      /*if (state.bankCardStatus == BankCardStatus.delivered) {
        emit(state.copyWith(status: BankStatus.cardActivation));
        return;
      }*/

      emit(state.copyWith(status: BankStatus.loading));
      await Future.delayed(const Duration(milliseconds: 200));
      if (state.bankCardStatus == BankCardStatus.ordered) {
        emit(state.copyWith(
            status: BankStatus.initial, bankCardStatus: BankCardStatus.issued));
      } else if (state.bankCardStatus == BankCardStatus.issued) {
        emit(state.copyWith(
            status: BankStatus.initial,
            bankCardStatus: BankCardStatus.delivered));
      } else if (state.bankCardStatus == BankCardStatus.delivered) {
        emit(state.copyWith(
            status: BankStatus.initial,
            bankCardStatus: BankCardStatus.activated));
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: BankStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
