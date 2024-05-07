part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();
}

class ForgotPasswordFailure extends ForgotPasswordState {
  final String message;

  const ForgotPasswordFailure(this.message);

  @override
  List<Object?> get props => [];
}

class ForgotPasswordProgress extends ForgotPasswordState {
  @override
  List<Object?> get props => [];
}

class ForgotPasswordSuccess extends ForgotPasswordState {
  @override
  List<Object?> get props => [];
}
