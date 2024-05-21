import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_dto.freezed.dart';

@freezed
class VerifyOtpResponseDto with _$VerifyOtpResponseDto {
  const factory VerifyOtpResponseDto() = _VerifyOtpResponseDto;

  const factory VerifyOtpResponseDto.json(Map<String, dynamic> data) = Json;
}
