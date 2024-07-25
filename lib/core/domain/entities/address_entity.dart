import 'package:banx/core/domain/entities/city_entity.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/state_entity.dart';

class AddressEntity extends Entity {
  final int? id;
  final int? accountId;
  final String postalCode;
  final double latitude;
  final double longitude;
  final String address;
  final CityEntity city;
  final StateEntity state;

  AddressEntity({
    this.id,
    this.accountId,
    required this.postalCode,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.city,
    required this.state,
  });
}
