import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_dto.freezed.dart';
part 'verify_otp_response_dto.g.dart';

@freezed
class VerifyOtpResponseDto with _$VerifyOtpResponseDto {
  const factory VerifyOtpResponseDto({
    required String accessToken,
    required String refreshToken,
  }) = _VerifyOtpResponseDto;

  factory VerifyOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseDtoFromJson(json);
}
