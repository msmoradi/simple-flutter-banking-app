import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.freezed.dart';

@freezed
class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto(String status) = _LoginResponseDto;

  const factory LoginResponseDto.json(Map<String, dynamic> data) = Json;
}
