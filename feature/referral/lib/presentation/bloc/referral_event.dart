part of 'referral_bloc.dart';

abstract class ReferralEvent extends Equatable {
  const ReferralEvent();

  @override
  List<Object> get props => [];
}

class ReferralSubmitted extends ReferralEvent {
  final String referralCode;

  const ReferralSubmitted(this.referralCode);

  @override
  List<Object> get props => [referralCode];
}
