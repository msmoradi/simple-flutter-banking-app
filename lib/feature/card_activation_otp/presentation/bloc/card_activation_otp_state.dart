part of 'card_activation_otp_bloc.dart';

@immutable
abstract class CardActivationOtpState extends Equatable {
  const CardActivationOtpState();
}

class CardActivationOtpFailure extends CardActivationOtpState {
  final String message;

  const CardActivationOtpFailure(this.message);

  @override
  List<Object?> get props => [];
}

class OtpError extends CardActivationOtpState {
  final String message;

  const OtpError(this.message);

  @override
  List<Object?> get props => [];
}

class CardActivationOtpInProgress extends CardActivationOtpState {
  @override
  List<Object?> get props => [];
}

class VerifyPassword extends CardActivationOtpState {
  final String refreshToken;

  const VerifyPassword({required this.refreshToken});

  @override
  List<Object?> get props => [];
}

class CardActivationOtpValidated extends CardActivationOtpState {
  @override
  List<Object?> get props => [];
}
