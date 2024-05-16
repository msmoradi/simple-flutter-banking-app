part of 'verify_otp_bloc.dart';

abstract class VerifyOtpEvent extends Equatable {
  const VerifyOtpEvent();

  @override
  List<Object> get props => [];
}

class VerifyOtpSubmitted extends VerifyOtpEvent {
  final String email;
  final String password;

  const VerifyOtpSubmitted(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}
