import 'package:domain/entities/password_entity.dart';
import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entities/sign_up_entity.dart';
import 'package:domain/entities/verify_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';

abstract class AuthenticationRepository {
  Future<EntityWrapper<SendOtpEntity>> sendOtp({
    required String phoneNumber,
  });

  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp({
    required String phoneNumber,
    required String otp,
  });

  Future<EntityWrapper<PasswordEntity>> password({
    required String password,
  });

  Future<EntityWrapper<VerifyOtpEntity>> refresh({
    required String refreshToken,
    required String password,
  });

  Future<EntityWrapper<SignUpEntity>> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    required String referralCode,
  });

  Future<EntityWrapper<SendOtpEntity>> checkPostalCode({
    required String postalCode,
  });
}
