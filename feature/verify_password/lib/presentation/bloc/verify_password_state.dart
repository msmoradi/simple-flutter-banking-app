part of 'verify_password_bloc.dart';

@immutable
abstract class VerifyPasswordState extends Equatable {
  const VerifyPasswordState();
}

class VerifyPasswordFailure extends VerifyPasswordState {
  final String message;

  const VerifyPasswordFailure(this.message);

  @override
  List<Object?> get props => [];
}

class PasswordError extends VerifyPasswordState {
  final String message;

  const PasswordError(this.message);

  @override
  List<Object?> get props => [];
}

class VerifyPasswordInProgress extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class VerifyPasswordSuccess extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class SetPassword extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class VerifyPassword extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class VerifyPasswordValidated extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}
