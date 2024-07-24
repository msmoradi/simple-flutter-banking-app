import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/domain/entities/address_entity.dart';

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

extension CityDtoMapper on City {
  CityEntity toEntity() {
    return CityEntity(
      id: id,
      name: name,
    );
  }
}

extension StateDtoMapper on State {
  StateEntity toEntity() {
    return StateEntity(
      id: id,
      name: name,
    );
  }
}
