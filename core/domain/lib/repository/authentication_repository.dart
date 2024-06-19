import 'package:domain/entities/password_entity.dart';
import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entities/sign_up_entity.dart';
import 'package:domain/entities/verify_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';

abstract class AuthenticationRepository {
  Future<EntityWrapper<SendOtpEntity>> sendOtp(
    String phoneNumber,
  );

  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp(
    String phoneNumber,
    String otp,
  );

  Future<EntityWrapper<PasswordEntity>> password(
    String password,
  );

  Future<EntityWrapper<VerifyOtpEntity>> refresh(
    String refreshToken,
    String password,
  );

  Future<EntityWrapper<SignUpEntity>> signup(
    String phoneNumber,
    String nationalId,
    String birthDate,
    String referralCode,
  );
}
