import 'dart:async';

import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/mapper/address_mapper.dart';
import 'package:banx/core/data/mapper/generic_list_mapper.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/city_dto.dart';
import 'package:banx/core/data/model/province_dto.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/city_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entities/post_address_entity.dart';
import 'package:banx/core/domain/entities/put_address_entity.dart';
import 'package:banx/core/domain/entities/state_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressRepository)
class AddressRepositoryImpl extends AddressRepository {
  AddressRepositoryImpl({required this.addressRemoteDataSource});

  final AddressRemoteDataSource addressRemoteDataSource;

  @override
  Future<EntityWrapper<GenericListEntity<AddressEntity>>> getAddress() {
    return addressRemoteDataSource.getAddress().mapResponseToEntityWrapper(
        mapper: (model) {
      return model.toEntity((item) => (item).toEntity());
    });
  }

  @override
  Future<EntityWrapper<PostAddressEntity>> postAddress({
    int? id,
    int? accountId,
    required String postalCode,
    required String address,
    required String region,
    required String street,
    required String plaque,
    required String floor,
    required String unit,
    required String houseName,
    required CityEntity city,
    required ProvinceEntity province,
  }) {
    return addressRemoteDataSource
        .postAddress(
            addressDto: AddressDto(
                id: id,
                accountId: accountId,
                postalCode: postalCode,
                address: address,
                region: region,
                street: street,
                plaque: plaque,
                floor: floor,
                unit: unit,
                houseName: houseName,
                cityDto: CityDto(id: city.id, name: city.name),
                provinceDto: ProvinceDto(id: province.id, name: province.name)))
        .mapResponseToEntityWrapper(mapper: (model) {
      return PostAddressEntity();
    });
  }

  @override
  Future<EntityWrapper<PutAddressEntity>> putAddress() {
    return addressRemoteDataSource.putAddress().mapResponseToEntityWrapper(
        mapper: (model) {
      return PutAddressEntity();
    });
  }

  @override
  Future<EntityWrapper<PutAddressEntity>> getCities() {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<EntityWrapper<AddressEntity>> getInquiry(
      {required String postalCode}) {
    return addressRemoteDataSource
        .getInquiry(postalCode: postalCode)
        .mapResponseToEntityWrapper(mapper: (model) {
      return model.address.toEntity();
    });
  }

  @override
  Future<EntityWrapper<PutAddressEntity>> getStates() {
    // TODO: implement getStates
    throw UnimplementedError();
  }
}
