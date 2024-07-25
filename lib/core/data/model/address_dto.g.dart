// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      accountId: (json['accountId'] as num?)?.toInt(),
      postalCode: json['postalCode'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String,
      city: CityDto.fromJson(json['city'] as Map<String, dynamic>),
      state: StateDto.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'postalCode': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
    };
