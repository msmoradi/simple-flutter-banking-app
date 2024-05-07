part of 'reset_pass_bloc.dart';

@immutable
abstract class ResetPasswordState extends Equatable {
  const ResetPasswordState();
}

class ResetPasswordFailure extends ResetPasswordState {
  @override
  List<Object?> get props => [];
}

class ResetPasswordInProgress extends ResetPasswordState {
  @override
  List<Object?> get props => [];
}

class ResetPasswordSuccess extends ResetPasswordState {
  @override
  List<Object?> get props => [];
}
