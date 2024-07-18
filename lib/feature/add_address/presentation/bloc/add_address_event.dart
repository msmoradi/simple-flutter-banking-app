part of 'add_address_bloc.dart';

abstract class AddAddressEvent extends Equatable {
  const AddAddressEvent();

  @override
  List<Object> get props => [];
}

class CheckPostalCodeSubmitted extends AddAddressEvent {
  final String postalCode;

  const CheckPostalCodeSubmitted(this.postalCode);

  @override
  List<Object> get props => [];
}
