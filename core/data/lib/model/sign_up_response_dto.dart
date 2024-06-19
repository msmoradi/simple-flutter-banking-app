import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response_dto.freezed.dart';

@freezed
class SignUpResponseDto with _$SignUpResponseDto {
  const factory SignUpResponseDto(
    Long expiresIn,
    int codeLength,
  ) = _SignUpResponseDto;

  const factory SignUpResponseDto.json(Map<String, dynamic> data) = Json;
}
