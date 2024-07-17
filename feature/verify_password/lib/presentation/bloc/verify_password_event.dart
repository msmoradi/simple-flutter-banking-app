part of 'verify_password_bloc.dart';

abstract class VerifyPasswordEvent extends Equatable {
  const VerifyPasswordEvent();

  @override
  List<Object> get props => [];
}

class VerifyPasswordSubmitted extends VerifyPasswordEvent {
  final String password;

  const VerifyPasswordSubmitted({
    required this.password,
  });

  @override
  List<Object> get props => [password];
}
