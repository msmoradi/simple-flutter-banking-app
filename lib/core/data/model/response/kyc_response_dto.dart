import 'package:banx/core/data/model/response/routing_button_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'kyc_response_dto.freezed.dart';

part 'kyc_response_dto.g.dart';

@freezed
class KycResponseDto with _$KycResponseDto {
  const factory KycResponseDto({
    required RoutingButtonDto routingButton,
    required KYCStatusDto identity,
    required KYCStatusDto phoneNumber,
    required KYCStatusDto face,
    required KYCStatusDto sayah,
  }) = _KycResponseDto;

  factory KycResponseDto.fromJson(Map<String, dynamic> json) =>
      _$KycResponseDtoFromJson(json);
}

@freezed
class KYCStatusDto with _$KYCStatusDto {
  const factory KYCStatusDto({
    required KYCStatus status,
    required String title,
    required String description,
  }) = _KYCStatus;

  factory KYCStatusDto.fromJson(Map<String, dynamic> json) =>
      _$KYCStatusDtoFromJson(json);
}

enum KYCStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('CHECKING')
  checking,
  @JsonValue('SUCCEEDED')
  succeeded,
  @JsonValue('FAILED')
  failed,
}
