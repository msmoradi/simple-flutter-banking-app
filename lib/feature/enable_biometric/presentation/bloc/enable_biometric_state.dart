part of 'enable_biometric_bloc.dart';

@immutable
abstract class EnableBiometricState extends Equatable {
  const EnableBiometricState();
}

class EnableBiometricFailure extends EnableBiometricState {
  final String message;

  const EnableBiometricFailure(this.message);

  @override
  List<Object?> get props => [];
}

class EnableBiometricInProgress extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}

class HomeLanding extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}

class WaitingLanding extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}

class FaceDetectionLanding extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}

class CardOrderingLanding extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}

class EnableBiometricValidated extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}
