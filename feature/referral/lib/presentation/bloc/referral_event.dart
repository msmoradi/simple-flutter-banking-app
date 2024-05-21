part of 'referral_bloc.dart';

abstract class ReferralEvent extends Equatable {
  const ReferralEvent();

  @override
  List<Object> get props => [];
}

class ReferralSubmitted extends ReferralEvent {
  final String referralNumber;

  const ReferralSubmitted(this.referralNumber);

  @override
  List<Object> get props => [referralNumber];
}
