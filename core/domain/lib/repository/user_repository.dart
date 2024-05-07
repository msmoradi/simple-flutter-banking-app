import 'package:domain/entities/user.dart';
import 'package:domain/entity_wrapper.dart';

abstract class UserRepository {
  Future<EntityWrapper<UserEntity>> getUser();
}
