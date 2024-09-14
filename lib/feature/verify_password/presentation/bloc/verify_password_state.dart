import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_password_state.freezed.dart';

enum VerifyPasswordStatus {
  initial,
  failure,
  loading,
  deepLinkLanding
}

@freezed
class VerifyPasswordState with _$VerifyPasswordState {
  const VerifyPasswordState._();

  const factory VerifyPasswordState({
    required VerifyPasswordStatus status,
    String? errorMessage,
    String? deeplink,
    bool? showBiometric,
    String? name,
    String? photoUrl,
  }) = _VerifyPasswordState;
}
