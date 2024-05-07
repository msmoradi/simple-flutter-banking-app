import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_response_dto.freezed.dart';

@freezed
class ForgotPasswordResponseDto with _$ForgotPasswordResponseDto {
  const factory ForgotPasswordResponseDto(int status, String message) =
      _ForgotPasswordResponseDto;

  const factory ForgotPasswordResponseDto.json(Map<String, dynamic> data) =
      Json;
}
