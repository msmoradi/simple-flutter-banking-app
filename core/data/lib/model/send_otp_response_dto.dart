import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response_dto.freezed.dart';

@freezed
class SendOtpResponseDto with _$SendOtpResponseDto {
  const factory SendOtpResponseDto(
    bool needSignup,
    bool needReferralCode,
    Long expiresIn,
    int codeLength,
  ) = _SendOtpResponseDto;

  const factory SendOtpResponseDto.json(Map<String, dynamic> data) = Json;
}
