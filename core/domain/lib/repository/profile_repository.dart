import 'package:domain/entities/user_profile_entity.dart';
import 'package:domain/entity_wrapper.dart';

abstract class ProfileRepository {
  Future<EntityWrapper<UserProfileEntity>> getProfile();
}
