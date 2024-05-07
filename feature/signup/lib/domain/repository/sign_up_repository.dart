import 'package:domain/entity_wrapper.dart';
import 'package:signup/domain/sign_up_entity.dart';

abstract class SignUpRepository {
  Future<EntityWrapper<SignUpEntity>> signUp(
    String firstName,
    String lastName,
    String emailAddress,
    String password,
    bool isAcceptContracts,
  );
}
