import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class ProfileRepository {
  Future<EntityWrapper<UserProfileEntity>> getProfile();

  Future<void> saveFirstName(String? firstName);

  Future<void> savePhotoUrl(String? photoUrl);

  Future<String?> getFirstName();

  Future<String?> getPhotoUrl();
}
