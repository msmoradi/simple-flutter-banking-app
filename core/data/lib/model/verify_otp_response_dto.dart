import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_dto.freezed.dart';

@freezed
class VerifyOtpResponseDto with _$VerifyOtpResponseDto {
  const factory VerifyOtpResponseDto(
    String access_token,
    String refresh_token,
    String passwordAuthentication,
  ) = _VerifyOtpResponseDto;

  const factory VerifyOtpResponseDto.json(Map<String, dynamic> data) = Json;
}
