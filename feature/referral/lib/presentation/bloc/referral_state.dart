part of 'referral_bloc.dart';

@immutable
abstract class ReferralState extends Equatable {
  const ReferralState();
}

class ReferralFailure extends ReferralState {
  final String message;

  const ReferralFailure(this.message);

  @override
  List<Object?> get props => [];
}

class ReferralInProgress extends ReferralState {
  @override
  List<Object?> get props => [];
}

class ReferralSuccess extends ReferralState {
  const ReferralSuccess();

  @override
  List<Object?> get props => [];
}

class ReferralValidated extends ReferralState {
  @override
  List<Object?> get props => [];
}
