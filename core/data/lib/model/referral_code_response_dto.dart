import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_code_response_dto.freezed.dart';

@freezed
class ReferralCodeResponseDto with _$ReferralCodeResponseDto {
  const factory ReferralCodeResponseDto() = _ReferralCodeResponseDto;

  const factory ReferralCodeResponseDto.json(Map<String, dynamic> data) = Json;
}
