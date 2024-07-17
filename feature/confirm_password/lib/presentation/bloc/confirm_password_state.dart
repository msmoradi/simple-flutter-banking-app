part of 'confirm_password_bloc.dart';

@immutable
abstract class ConfirmPasswordState extends Equatable {
  const ConfirmPasswordState();
}

class ConfirmPasswordFailure extends ConfirmPasswordState {
  final String message;

  const ConfirmPasswordFailure(this.message);

  @override
  List<Object?> get props => [];
}

class ConfirmPasswordInProgress extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}

class HomeLanding extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}

class WaitingLanding extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}

class FaceDetectionLanding extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}

class CardOrderingLanding extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}

class ConfirmPasswordValidated extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}
