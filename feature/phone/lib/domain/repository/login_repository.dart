import 'package:domain/entity_wrapper.dart';
import 'package:phone/domain/login_entity.dart';

abstract class LoginRepository {
  Future<EntityWrapper<LoginEntity>> login(
    String username,
    String password,
  );
}
