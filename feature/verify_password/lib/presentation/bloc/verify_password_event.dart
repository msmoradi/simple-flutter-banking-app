part of 'verify_password_bloc.dart';

abstract class VerifyPasswordEvent extends Equatable {
  const VerifyPasswordEvent();

  @override
  List<Object> get props => [];
}

class VerifyPasswordSubmitted extends VerifyPasswordEvent {
  final String password;
  final String phoneNumber;
  final String refreshToken;

  const VerifyPasswordSubmitted({
    required this.phoneNumber,
    required this.password,
    required this.refreshToken,
  });

  @override
  List<Object> get props => [password];
}
