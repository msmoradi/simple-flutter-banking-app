import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_postal_code_response_dto.freezed.dart';
part 'check_postal_code_response_dto.g.dart';

@freezed
class CheckPostalCodeResponseDto with _$CheckPostalCodeResponseDto {
  const factory CheckPostalCodeResponseDto({
    required String postalCode,
  }) = _CheckPostalCodeResponseDto;

  factory CheckPostalCodeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CheckPostalCodeResponseDtoFromJson(json);
}
