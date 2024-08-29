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

class PinExist extends VerifyPasswordState {
  final String password;

  const PinExist(this.password);

  @override
  List<Object?> get props => [];
}

class VerifyPasswordInProgress extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class HomeLanding extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class WaitingLanding extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class FaceDetectionLanding extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class CardOrderingLanding extends VerifyPasswordState {
  @override
  List<Object?> get props => [];
}

class VerifyPasswordInitial extends VerifyPasswordState {
  final bool showBiometric;
  final String firstName;
  final String photoUrl;

  const VerifyPasswordInitial({
    required this.showBiometric,
    this.firstName = "",
    this.photoUrl = "",
  });

  @override
  List<Object?> get props => [];
}
