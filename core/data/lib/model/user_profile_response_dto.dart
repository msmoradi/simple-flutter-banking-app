import 'dart:ffi';

import 'package:domain/entities/send_otp_entity.dart';
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
    required String landingPage,
    required String? kycLevel,
    required KycState kycState,
  }) = _UserProfileResponseDto;

  factory UserProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseDtoFromJson(json);
}

@freezed
class KycState with _$KycState {
  const factory KycState({
    required bool identityChecked,
    required bool? livenessChecked,
    required bool? faceCompareChecked,
    required bool? sayahChecked,
  }) = _KycState;

  factory KycState.fromJson(Map<String, dynamic> json) =>
      _$KycStateFromJson(json);
}


