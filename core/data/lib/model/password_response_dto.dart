import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_response_dto.freezed.dart';
part 'password_response_dto.g.dart';

@freezed
class PasswordResponseDto with _$PasswordResponseDto {
  const factory PasswordResponseDto() = _PasswordResponseDto;

  factory PasswordResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PasswordResponseDtoFromJson(json);

  factory PasswordResponseDto.empty() {
    return const PasswordResponseDto();
  }
}
