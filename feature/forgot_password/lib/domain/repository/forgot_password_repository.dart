import 'package:domain/entity_wrapper.dart';
import 'package:forgot_password/domain/forgot_password_entity.dart';

abstract class ForgotPasswordRepository {
  Future<EntityWrapper<ForgotPasswordEntity>> forgotPassword(
    String emailAddress,
  );
}
