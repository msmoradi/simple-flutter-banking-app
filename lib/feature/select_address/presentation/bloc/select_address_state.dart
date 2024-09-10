part of 'select_address_bloc.dart';

@immutable
abstract class SelectAddressState extends Equatable {
  const SelectAddressState();
}

class SelectAddressFailure extends SelectAddressState {
  final String message;

  const SelectAddressFailure(this.message);

  @override
  List<Object?> get props => [];
}

class SelectAddressInProgress extends SelectAddressState {
  @override
  List<Object?> get props => [];
}

class SelectAddressValidated extends SelectAddressState {
  @override
  List<Object?> get props => [];
}

class SelectAddressSuccess extends SelectAddressState {
  final String address;

  const SelectAddressSuccess({required this.address});

  @override
  List<Object?> get props => [];
}
