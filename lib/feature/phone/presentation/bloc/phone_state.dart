part of 'phone_bloc.dart';

@immutable
abstract class PhoneState extends Equatable {
  const PhoneState();
}

class PhoneFailure extends PhoneState {
  final String message;

  const PhoneFailure(this.message);

  @override
  List<Object?> get props => [];
}

class PhoneInProgress extends PhoneState {
  @override
  List<Object?> get props => [];
}

class VerifyOtpSuccess extends PhoneState {
  final String phoneNumber;
  final int expiresIn;
  final int codeLength;

  const VerifyOtpSuccess({
    required this.phoneNumber,
    required this.expiresIn,
    required this.codeLength,
  });

  @override
  List<Object?> get props => [phoneNumber, expiresIn, codeLength];
}

class Identity extends PhoneState {
  final String phoneNumber;
  final bool needReferralCode;

  const Identity({
    required this.phoneNumber,
    required this.needReferralCode,
  });

  @override
  List<Object?> get props => [phoneNumber, needReferralCode];
}

class PhoneValidated extends PhoneState {
  @override
  List<Object?> get props => [];
}
