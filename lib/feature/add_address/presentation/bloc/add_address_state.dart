part of 'add_address_bloc.dart';

@immutable
abstract class AddAddressState extends Equatable {
  const AddAddressState();
}

class AddAddressFailure extends AddAddressState {
  final String message;

  const AddAddressFailure(this.message);

  @override
  List<Object?> get props => [];
}

class AddAddressInProgress extends AddAddressState {
  @override
  List<Object?> get props => [];
}

class AddAddressValidated extends AddAddressState {
  @override
  List<Object?> get props => [];
}

class AddAddressSuccess extends AddAddressState {
  final String address;

  const AddAddressSuccess({required this.address});

  @override
  List<Object?> get props => [];
}
