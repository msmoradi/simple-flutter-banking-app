part of 'identity_bloc.dart';

abstract class IdentityEvent extends Equatable {
  const IdentityEvent();

  @override
  List<Object> get props => [];
}

class IdentitySubmitted extends IdentityEvent {
  final String phoneNumber;

  const IdentitySubmitted(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}
