import 'dart:async';

import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressRepository)
class AddressRepositoryImpl extends AddressRepository {
  AddressRepositoryImpl({required this.addressRemoteDataSource});

  final AddressRemoteDataSource addressRemoteDataSource;

  @override
  Future<EntityWrapper<AddressEntity>> getAddress() {
    return addressRemoteDataSource.getAddress().mapResponseToEntityWrapper(
        mapper: (model) {
      return AddressEntity();
    });
  }

  @override
  Future<EntityWrapper<AddressEntity>> postAddress(
      {required String postalCode}) {
    return addressRemoteDataSource
        .postAddress(postalCode: postalCode)
        .mapResponseToEntityWrapper(mapper: (model) {
      return AddressEntity();
    });
  }

  @override
  Future<EntityWrapper<AddressEntity>> putAddress() {
    return addressRemoteDataSource.putAddress().mapResponseToEntityWrapper(
        mapper: (model) {
      return AddressEntity();
    });
  }
}
