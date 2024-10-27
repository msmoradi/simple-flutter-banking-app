import 'dart:async';

import 'package:banx/core/designsystem/widgets/components/transaction_icon.dart';
import 'package:banx/feature/bank/presentation/bloc/bank_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'bank_event.dart';

@injectable
class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc()
      : super(const BankState(
          status: BankStatus.loading,
          bankCardStatus: BankCardStatus.ordered,
          errorMessage: '',
        )) {
    on<BankXClick>(_onBankXClick);
    on<Init>(_onInit);
    add(Init());
  }

  Future<void> _onInit(Init event, Emitter<BankState> emit) async {
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(
      transactions: [
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
            amount: '۲۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
            amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
            amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۷۲٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
            amount: '۳۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۱٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۶۳٬۲۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
            amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
            amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: true,
            title: 'واریز به سپرده',
            subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
            amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
            amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
            amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
        TransactionModel(
            isInput: false,
            title: 'برداشت از سپرده',
            subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
            amount: '۱٬۰۰۰٬۰۰۰ ﷼')
      ],
      status: BankStatus.initial,
    ));
  }

  Future<void> _onBankXClick(BankXClick event, Emitter<BankState> emit) async {
    try {
      /*if (state.bankCardStatus == BankCardStatus.delivered) {
        emit(state.copyWith(status: BankStatus.cardActivation));
        return;
      }*/
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
