import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/city_dto.dart';
import 'package:banx/core/data/model/get_inquiry_response_dto.dart';
import 'package:banx/core/data/model/state_dto.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/city_entity.dart';
import 'package:banx/core/domain/entities/state_entity.dart';

extension AddressDtoMapper on AddressDto {
  AddressEntity toEntity() {
    return AddressEntity(
      id: id,
      accountId: accountId,
      postalCode: postalCode,
      latitude: latitude,
      longitude: longitude,
      address: address,
      city: city.toEntity(),
      state: state.toEntity(),
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

extension StateDtoMapper on StateDto {
  StateEntity toEntity() {
    return StateEntity(
      id: id,
      name: name,
    );
  }
}

extension GetInquiryResponseDtoMapper on GetInquiryResponseDto {
  AddressEntity toEntity() {
    return AddressEntity(
      id: address.id,
      accountId: address.accountId,
      postalCode: address.postalCode,
      latitude: address.latitude,
      longitude: address.longitude,
      address: address.address,
      city: address.city.toEntity(),
      state: address.state.toEntity(),
    );
  }
}
