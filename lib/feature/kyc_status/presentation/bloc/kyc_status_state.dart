part of 'kyc_status_bloc.dart';

@immutable
abstract class KycStatusState extends Equatable {
  const KycStatusState();
}

class KycStatusFailure extends KycStatusState {
  final String message;

  const KycStatusFailure(this.message);

  @override
  List<Object?> get props => [];
}

class KycStatusInProgress extends KycStatusState {
  @override
  List<Object?> get props => [];
}

class DeepLinkLanding extends KycStatusState {
  final String deeplink;

  const DeepLinkLanding({required this.deeplink});

  @override
  List<Object?> get props => [];
}

class KycStatusSuccess extends KycStatusState {
  final String? deeplink;
  final String actionTitle;
  final String actionIcon;
  final IconAlignment iconAlignment;

  final KYCStatusEntity identity;
  final KYCStatusEntity phoneNumber;
  final KYCStatusEntity face;
  final KYCStatusEntity sayah;

  const KycStatusSuccess({
    this.deeplink = null,
    this.actionTitle = "",
    this.actionIcon = "",
    this.iconAlignment = IconAlignment.end,
    required this.identity,
    required this.phoneNumber,
    required this.face,
    required this.sayah,
  });

  @override
  List<Object?> get props =>
      [deeplink, actionTitle, actionIcon, identity, phoneNumber, face, sayah];

  KycStatusSuccess copyWith({
    String? deeplink,
    String? actionTitle,
    String? actionIcon,
    IconAlignment? iconAlignment,
    KYCStatusEntity? identity,
    KYCStatusEntity? phoneNumber,
    KYCStatusEntity? face,
    KYCStatusEntity? sayah,
  }) {
    return KycStatusSuccess(
      deeplink: deeplink ?? this.deeplink,
      actionTitle: actionTitle ?? this.actionTitle,
      actionIcon: actionIcon ?? this.actionIcon,
      iconAlignment: iconAlignment ?? this.iconAlignment,
      identity: identity ?? this.identity,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      face: face ?? this.face,
      sayah: sayah ?? this.sayah,
    );
  }
}
