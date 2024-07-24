import 'package:banx/core/domain/entities/entity.dart';

class AddressEntity extends Entity {
  AddressEntity({
    required int id,
    required int accountId,
    required String postalCode,
    required double latitude,
    required double longitude,
    required String address,
    required CityEntity city,
    required StateEntity state,
  });
}

class CityEntity extends Entity {
  CityEntity({
    required int id,
    required String name,
  });
}

class StateEntity extends Entity {
  StateEntity({
    required int id,
    required String name,
  });
}
