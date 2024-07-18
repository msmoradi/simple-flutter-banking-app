part of 'confirm_password_bloc.dart';

abstract class ConfirmPasswordEvent extends Equatable {
  const ConfirmPasswordEvent();

  @override
  List<Object> get props => [];
}

class ConfirmPasswordSubmitted extends ConfirmPasswordEvent {
  final String phoneNumber;
  final String password;

  const ConfirmPasswordSubmitted({
    required this.phoneNumber,
    required this.password,
  });

  @override
  List<Object> get props => [phoneNumber];
}
