import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response_dto.freezed.dart';

part 'user_profile_response_dto.g.dart';

@freezed
class UserProfileResponseDto with _$UserProfileResponseDto {
  const factory UserProfileResponseDto({
    required String? firstName,
    required String? lastName,
    required String? firstNameEN,
    required String? lastNameEN,
    required String? phoneNumber,
    required String? username,
    required String? nationalID,
    required String? photoUrl,
    required String? profileStatus,
    required LandingPage landingPage,
    required String? kycLevel,
    required KycState kycState,
  }) = _UserProfileResponseDto;

  factory UserProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseDtoFromJson(json);
}

@freezed
class KycState with _$KycState {
  const factory KycState({
    required KYCStatus identityChecked,
    required KYCStatus livenessChecked,
    required KYCStatus faceCompareChecked,
    required KYCStatus sayahChecked,
  }) = _KycState;

  factory KycState.fromJson(Map<String, dynamic> json) =>
      _$KycStateFromJson(json);
}

enum KYCStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('CHECKING')
  checking,
  @JsonValue('SUCCEEDED')
  succeeded,
  @JsonValue('FAILED')
  failed,
}

enum LandingPage {
  @JsonValue('home')
  home,
  @JsonValue('waiting')
  waiting,
  @JsonValue('faceDetection')
  faceDetection,
  @JsonValue('cardOrdering')
  cardOrdering,
}
