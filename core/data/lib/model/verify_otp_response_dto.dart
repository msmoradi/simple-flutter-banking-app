import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_dto.freezed.dart';
part 'verify_otp_response_dto.g.dart';

@freezed
class VerifyOtpResponseDto with _$VerifyOtpResponseDto {
  const factory VerifyOtpResponseDto({
    required String access_token,
    required String refresh_token,
    required String passwordAuthentication,
  }) = _VerifyOtpResponseDto;

  factory VerifyOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseDtoFromJson(json);
}
