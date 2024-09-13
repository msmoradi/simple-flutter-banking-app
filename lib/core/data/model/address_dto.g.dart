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
      address: json['address'] as String,
      region: json['region'] as String,
      street: json['street'] as String,
      plaque: json['plaque'] as String,
      floor: json['floor'] as String,
      unit: json['unit'] as String,
      houseName: json['houseName'] as String,
      cityDto: CityDto.fromJson(json['cityDto'] as Map<String, dynamic>),
      provinceDto:
          ProvinceDto.fromJson(json['provinceDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'postalCode': instance.postalCode,
      'address': instance.address,
      'region': instance.region,
      'street': instance.street,
      'plaque': instance.plaque,
      'floor': instance.floor,
      'unit': instance.unit,
      'houseName': instance.houseName,
      'cityDto': instance.cityDto,
      'provinceDto': instance.provinceDto,
    };
