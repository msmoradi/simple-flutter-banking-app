import 'dart:async';

import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/mapper/address_mapper.dart';
import 'package:banx/core/data/mapper/generic_list_mapper.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entities/post_address_entity.dart';
import 'package:banx/core/domain/entities/put_address_entity.dart';
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
  Future<EntityWrapper<PostAddressEntity>> postAddress(
      {required String postalCode}) {
    return addressRemoteDataSource
        .postAddress(postalCode: postalCode)
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
      return model.toEntity();
    });
  }

  @override
  Future<EntityWrapper<PutAddressEntity>> getStates() {
    // TODO: implement getStates
    throw UnimplementedError();
  }
}
