part of 'phone_bloc.dart';

abstract class PhoneEvent extends Equatable {
  const PhoneEvent();

  @override
  List<Object> get props => [];
}

class PhoneSubmitted extends PhoneEvent {
  final String email;
  final String password;

  const PhoneSubmitted(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}
