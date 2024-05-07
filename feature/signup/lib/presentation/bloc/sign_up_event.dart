part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpSubmitted extends SignUpEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const SignUpSubmitted(
      this.firstName, this.lastName, this.email, this.password);

  @override
  List<Object> get props => [firstName, lastName, email, password];
}
