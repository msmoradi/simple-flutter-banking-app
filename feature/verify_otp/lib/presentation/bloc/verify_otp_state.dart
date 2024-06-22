part of 'verify_otp_bloc.dart';

@immutable
abstract class VerifyOtpState extends Equatable {
  const VerifyOtpState();
}

class VerifyOtpFailure extends VerifyOtpState {
  final String message;

  const VerifyOtpFailure(this.message);

  @override
  List<Object?> get props => [];
}

class OtpError extends VerifyOtpState {
  final String message;

  const OtpError(this.message);

  @override
  List<Object?> get props => [];
}

class VerifyOtpInProgress extends VerifyOtpState {
  @override
  List<Object?> get props => [];
}

class VerifyOtpSuccess extends VerifyOtpState {
  @override
  List<Object?> get props => [];
}

class VerifyOtpValidated extends VerifyOtpState {
  @override
  List<Object?> get props => [];
}
