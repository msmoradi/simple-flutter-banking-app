import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/city_dto.dart';
import 'package:banx/core/data/model/get_inquiry_response_dto.dart';
import 'package:banx/core/data/model/province_dto.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/city_entity.dart';
import 'package:banx/core/domain/entities/state_entity.dart';

extension AddressDtoMapper on AddressDto {
  AddressEntity toEntity() {
    return AddressEntity(
      id: id,
      accountId: id,
      postalCode: postalCode,
      address: address,
      region: region,
      street: street,
      plaque: plaque,
      floor: floor,
      unit: unit,
      houseName: houseName,
      cityId: cityId,
    );
  }
}

extension CityDtoMapper on CityDto {
  CityEntity toEntity() {
    return CityEntity(
      id: id,
      name: name,
    );
  }
}

extension ProvinceDtoMapper on ProvinceDto {
  ProvinceEntity toEntity() {
    return ProvinceEntity(
      id: id,
      name: name,
    );
  }
}
