import 'package:banx/core/data/mapper/routing_button_mapper.dart';
import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/domain/entities/kyc_state_entity.dart';
import 'package:banx/core/domain/entities/kyc_status_dto.dart';

extension KycResponseMapper on KycResponseDto {
  KycStateEntity toEntity() {
    return KycStateEntity(
      routingButton: routingButton.toEntity(),
      identity: identity.toEntity(),
      phoneNumber: phoneNumber.toEntity(),
      face: face.toEntity(),
      sayah: sayah.toEntity(),
    );
  }
}

extension KYCStatusMapper on KYCStatusDto {
  KYCStatusEntity toEntity() {
    return KYCStatusEntity(
      status: status,
      title: title,
      description: description,
    );
  }
}
