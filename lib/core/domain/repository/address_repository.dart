import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entities/post_address_entity.dart';
import 'package:banx/core/domain/entities/put_address_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class AddressRepository {
  Future<EntityWrapper<GenericListEntity<AddressEntity>>> getAddress();

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
    required String cityId,
  });

  Future<EntityWrapper<PutAddressEntity>> putAddress();

  Future<EntityWrapper<PutAddressEntity>> getStates();

  Future<EntityWrapper<AddressEntity>> getInquiry({required String postalCode});

  Future<EntityWrapper<PutAddressEntity>> getCities();
}
