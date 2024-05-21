import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entities/verify_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';

abstract class AuthenticationRepository {
  Future<EntityWrapper<SendOtpEntity>> sendOtp(
    String phoneNumber,
  );

  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp(
      String phoneNumber, String code);
}
