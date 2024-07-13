import 'package:domain/entities/check_postal_code_entity.dart';
import 'package:domain/entities/user_profile_entity.dart';
import 'package:domain/entity_wrapper.dart';

abstract class ProfileRepository {
  Future<EntityWrapper<UserProfileEntity>> getProfile();

  Future<EntityWrapper<CheckPostalCodeEntity>> checkPostalCode(
      {required String postalCode});
}
