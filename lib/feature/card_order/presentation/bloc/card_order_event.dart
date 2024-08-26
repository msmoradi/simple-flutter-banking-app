part of 'card_order_bloc.dart';

abstract class CardOrderEvent extends Equatable {
  const CardOrderEvent();

  @override
  List<Object> get props => [];
}

class CardOrderSubmitted extends CardOrderEvent {
  final String phoneNumber;

  const CardOrderSubmitted(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

class Init extends CardOrderEvent {
  const Init();

  @override
  List<Object> get props => [];
}
