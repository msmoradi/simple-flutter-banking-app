import 'dart:async';

import 'package:data/datasource/remote/authentication_remote_datasource.dart';
import 'package:data/mapper/response.mapper.dart';
import 'package:domain/entities/password_authentication.dart';
import 'package:domain/entities/password_entity.dart';
import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entities/sign_up_entity.dart';
import 'package:domain/entities/verify_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({required this.authenticationRemoteDataSource});

  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  @override
  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) {
    return authenticationRemoteDataSource
        .verifyOtp(phoneNumber, otp)
        .mapResponseToEntityWrapper(mapper: (model) {
      return VerifyOtpEntity(
        accessToken: model.access_token,
        refreshToken: model.refresh_token,
        passwordAuthentication:
            stringToPasswordAuthentication(model.passwordAuthentication),
      );
    });
  }

  @override
  Future<EntityWrapper<PasswordEntity>> password({required String password}) {
    return authenticationRemoteDataSource
        .password(password)
        .mapResponseToEntityWrapper(mapper: (model) {
      return PasswordEntity();
    });
  }

  @override
  Future<EntityWrapper<VerifyOtpEntity>> refresh({
    required String refreshToken,
    required String password,
  }) {
    return authenticationRemoteDataSource
        .refresh(refreshToken, password)
        .mapResponseToEntityWrapper(mapper: (model) {
      return VerifyOtpEntity(
        accessToken: model.access_token,
        refreshToken: model.refresh_token,
        passwordAuthentication:
            stringToPasswordAuthentication(model.passwordAuthentication),
      );
    });
  }

  @override
  Future<EntityWrapper<SignUpEntity>> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    required String referralCode,
  }) {
    return authenticationRemoteDataSource
        .signup(phoneNumber, nationalId, birthDate, referralCode)
        .mapResponseToEntityWrapper(mapper: (model) {
      return SignUpEntity(
        expiresIn: model.expiresIn,
        codeLength: model.codeLength,
      );
    });
  }

  @override
  Future<EntityWrapper<SendOtpEntity>> sendOtp({required String phoneNumber}) {
    return authenticationRemoteDataSource
        .sendOtp(phoneNumber)
        .mapResponseToEntityWrapper(mapper: (model) {
      return SendOtpEntity(
        needSignup: model.needSignup,
        needReferralCode: model.needReferralCode,
        expiresIn: model.expiresIn,
        codeLength: model.codeLength,
      );
    });
  }
}
