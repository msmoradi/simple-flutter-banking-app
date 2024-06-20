import 'dart:async';

import 'package:data/datasource/remote/authentication_remote_datasource.dart';
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
  Future<EntityWrapper<SendOtpEntity>> sendOtp({required String phoneNumber}) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<SendOtpEntity>(SendOtpEntity(
        needSignup: true,
        needReferralCode: true,
        expiresIn: 300,
        codeLength: 6,
      )),
    );

    /* return authenticationRemoteDataSource
        .sendOtp(phoneNumber)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<VerifyOtpEntity>(
        VerifyOtpEntity(
          accessToken: 'accessToken',
          refreshToken: 'refreshToken',
          passwordAuthentication: PasswordAuthentication.none,
        ),
      ),
    );

    /* return authenticationRemoteDataSource
        .verifyOtp(phoneNumber,code)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<PasswordEntity>> password({required String password}) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<PasswordEntity>(PasswordEntity()),
    );

    /* return authenticationRemoteDataSource
        .password(password)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<VerifyOtpEntity>> refresh({
    required String refreshToken,
    required String password,
  }) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<VerifyOtpEntity>(
        VerifyOtpEntity(
          accessToken: 'accessToken',
          refreshToken: 'refreshToken',
          passwordAuthentication: PasswordAuthentication.none,
        ),
      ),
    );

    /* return authenticationRemoteDataSource
        .refresh(password)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<SignUpEntity>> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    required String referralCode,
  }) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<SignUpEntity>(
          SignUpEntity(expiresIn: 300, codeLength: 6)),
    );

    /* return authenticationRemoteDataSource
        .refresh(password)
        .mapResponseToEntityWrapper();*/
  }
}
