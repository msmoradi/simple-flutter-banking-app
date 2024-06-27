// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorDtoImpl _$$ErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDtoImpl(
      identifier: json['identifier'] as String,
      error: json['error'] as String,
      errorCode: (json['errorCode'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorDtoImplToJson(_$ErrorDtoImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'error': instance.error,
      'errorCode': instance.errorCode,
      'message': instance.message,
    };
