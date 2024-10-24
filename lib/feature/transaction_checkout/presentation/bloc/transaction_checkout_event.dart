part of 'transaction_checkout_bloc.dart';

abstract class TransactionCheckoutEvent extends Equatable {
  const TransactionCheckoutEvent();

  @override
  List<Object> get props => [];
}

class Init extends TransactionCheckoutEvent {
  const Init();

  @override
  List<Object> get props => [];
}

class SourceSelectTypeEvent extends TransactionCheckoutEvent {
  final DepositType type;

  const SourceSelectTypeEvent(this.type);
}

class DestinationSelectTypeEvent extends TransactionCheckoutEvent {
  final DepositType type;

  const DestinationSelectTypeEvent(this.type);
}
