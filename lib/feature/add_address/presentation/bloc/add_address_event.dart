part of 'add_address_bloc.dart';

abstract class AddAddressEvent extends Equatable {
  const AddAddressEvent();

  @override
  List<Object> get props => [];
}

class AddAddressSubmitted extends AddAddressEvent {
  final String postalCode;

  const AddAddressSubmitted(this.postalCode);

  @override
  List<Object> get props => [];
}
