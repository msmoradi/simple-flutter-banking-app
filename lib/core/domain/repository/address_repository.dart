import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entities/put_address_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class AddressRepository {
  Future<EntityWrapper<GenericListEntity<AddressEntity>>> getAddress();

  Future<EntityWrapper<EmptyEntity>> postAddress({
    required AddressEntity addressEntity,
  });

  Future<EntityWrapper<PutAddressEntity>> putAddress();

  Future<EntityWrapper<PutAddressEntity>> getStates();

  Future<EntityWrapper<AddressEntity>> getInquiry({required String postalCode});

  Future<EntityWrapper<PutAddressEntity>> getCities();
}
