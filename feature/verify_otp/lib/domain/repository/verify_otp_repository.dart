import 'package:domain/entity_wrapper.dart';
import 'package:verify_otp/domain/verify_otp_entity.dart';

abstract class VerifyOtpRepository {
  Future<EntityWrapper<VerifyOtpEntity>> login(
    String username,
    String password,
  );
}
