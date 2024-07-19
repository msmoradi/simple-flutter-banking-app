part of 'enable_biometric_bloc.dart';

abstract class EnableBiometricEvent extends Equatable {
  const EnableBiometricEvent();

  @override
  List<Object> get props => [];
}

class EnableBiometricSubmitted extends EnableBiometricEvent {
  final bool authNeeded;
  final String password;

  const EnableBiometricSubmitted({
    required this.authNeeded,
    required this.password,
  });

  @override
  List<Object> get props => [];
}
