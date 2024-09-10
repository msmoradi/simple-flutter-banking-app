// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycResponseDtoImpl _$$KycResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$KycResponseDtoImpl(
      routingButton: RoutingButtonDto.fromJson(
          json['routingButton'] as Map<String, dynamic>),
      identity: KYCStatusDto.fromJson(json['identity'] as Map<String, dynamic>),
      phoneNumber:
          KYCStatusDto.fromJson(json['phoneNumber'] as Map<String, dynamic>),
      face: KYCStatusDto.fromJson(json['face'] as Map<String, dynamic>),
      sayah: KYCStatusDto.fromJson(json['sayah'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KycResponseDtoImplToJson(
        _$KycResponseDtoImpl instance) =>
    <String, dynamic>{
      'routingButton': instance.routingButton,
      'identity': instance.identity,
      'phoneNumber': instance.phoneNumber,
      'face': instance.face,
      'sayah': instance.sayah,
    };

_$KYCStatusImpl _$$KYCStatusImplFromJson(Map<String, dynamic> json) =>
    _$KYCStatusImpl(
      status: $enumDecode(_$KYCStatusEnumMap, json['status']),
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$KYCStatusImplToJson(_$KYCStatusImpl instance) =>
    <String, dynamic>{
      'status': _$KYCStatusEnumMap[instance.status]!,
      'title': instance.title,
      'description': instance.description,
    };

const _$KYCStatusEnumMap = {
  KYCStatus.pending: 'PENDING',
  KYCStatus.checking: 'CHECKING',
  KYCStatus.succeeded: 'SUCCEEDED',
  KYCStatus.failed: 'FAILED',
};
