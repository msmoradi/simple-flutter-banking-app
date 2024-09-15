import 'package:banx/core/domain/entities/kyc_status_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_status_state.freezed.dart';

enum KycStatusStatus { initial, failure, loading, deepLinkLanding }

@freezed
class KycStatusState with _$KycStatusState {
  const factory KycStatusState({
    @Default(KycStatusStatus.loading) KycStatusStatus status,
    @Default('') String errorMessage,
    String? deeplink,
    @Default('') String actionTitle,
    @Default('') String actionIcon,
    @Default(IconAlignment.end) IconAlignment iconAlignment,
    @Default(KYCStatusEntity()) KYCStatusEntity identity,
    @Default(KYCStatusEntity()) KYCStatusEntity phoneNumber,
    @Default(KYCStatusEntity()) KYCStatusEntity face,
    @Default(KYCStatusEntity()) KYCStatusEntity sayah,
  }) = _KycStatusState;
}
