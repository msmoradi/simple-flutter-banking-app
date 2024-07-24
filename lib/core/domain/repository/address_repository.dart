import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class AddressRepository {
  Future<EntityWrapper<AddressEntity>> getAddress();

  Future<EntityWrapper<AddressEntity>> postAddress(
      {required String postalCode});

  Future<EntityWrapper<AddressEntity>> putAddress();
}
