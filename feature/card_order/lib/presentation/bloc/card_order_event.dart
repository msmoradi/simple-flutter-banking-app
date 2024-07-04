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

class AddAddressSubmitted extends CardOrderEvent {

  const AddAddressSubmitted();

  @override
  List<Object> get props => [];
}

class CheckPostalCodeSubmitted extends CardOrderEvent {
  final String postalCode;

  const CheckPostalCodeSubmitted(this.postalCode);

  @override
  List<Object> get props => [];
}
