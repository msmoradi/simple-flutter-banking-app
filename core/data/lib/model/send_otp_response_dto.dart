import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response_dto.freezed.dart';

@freezed
class SendOtpResponseDto with _$SendOtpResponseDto {
  const factory SendOtpResponseDto(
      String phoneNumber, String sessionId, int numCells) = _SendOtpResponseDto;

  const factory SendOtpResponseDto.json(Map<String, dynamic> data) = Json;
}
