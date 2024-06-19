import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_response_dto.freezed.dart';

@freezed
class PasswordResponseDto with _$PasswordResponseDto {
  const factory PasswordResponseDto() = _PasswordResponseDto;

  const factory PasswordResponseDto.json(Map<String, dynamic> data) = Json;
}
