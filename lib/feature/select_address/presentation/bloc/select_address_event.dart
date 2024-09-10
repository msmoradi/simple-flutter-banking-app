part of 'select_address_bloc.dart';

abstract class SelectAddressEvent extends Equatable {
  const SelectAddressEvent();

  @override
  List<Object> get props => [];
}

class CheckPostalCodeSubmitted extends SelectAddressEvent {
  final String postalCode;

  const CheckPostalCodeSubmitted(this.postalCode);

  @override
  List<Object> get props => [];
}
