part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginFailure extends LoginState {
  final String message;

  const LoginFailure(this.message);

  @override
  List<Object?> get props => [];
}

class LoginInProgress extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginSuccess extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginValidated extends LoginState {
  @override
  List<Object?> get props => [];
}
