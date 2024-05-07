part of 'reset_pass_bloc.dart';

abstract class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

class ResetPasswordSubmitted extends ResetPasswordEvent {
  final String password;

  const ResetPasswordSubmitted(this.password);

  @override
  List<Object> get props => [password];
}
