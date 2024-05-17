part of 'verify_otp_bloc.dart';

abstract class VerifyOtpEvent extends Equatable {
  const VerifyOtpEvent();

  @override
  List<Object> get props => [];
}

class VerifyOtpSubmitted extends VerifyOtpEvent {
  final String otp;

  const VerifyOtpSubmitted(this.otp);

  @override
  List<Object> get props => [otp];
}
