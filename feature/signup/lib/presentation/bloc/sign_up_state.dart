part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState extends Equatable {
  const SignUpState();
}

class SignUpFailure extends SignUpState {
  final String message;

  const SignUpFailure(this.message);

  @override
  List<Object?> get props => [];
}

class SignUpInProgress extends SignUpState {
  @override
  List<Object?> get props => [];
}

class SignUpSuccess extends SignUpState {
  @override
  List<Object?> get props => [];
}

class SignUpValidated extends SignUpState {
  @override
  List<Object?> get props => [];
}
