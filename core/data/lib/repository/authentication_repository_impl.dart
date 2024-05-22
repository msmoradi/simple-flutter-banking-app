import 'dart:async';

import 'package:data/datasource/remote/authentication_remote_datasource.dart';
import 'package:domain/entities/identity_entity.dart';
import 'package:domain/entities/referral_code_entity.dart';
import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entities/verify_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({required this.authenticationRemoteDataSource});

  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  @override
  Future<EntityWrapper<SendOtpEntity>> sendOtp(String phoneNumber) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<SendOtpEntity>(
          SendOtpEntity(phoneNumber, "", 5)),
    );

    /* return authenticationRemoteDataSource
        .sendOtp(phoneNumber)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp(
      String phoneNumber, String code) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<VerifyOtpEntity>(VerifyOtpEntity()),
    );

    /* return authenticationRemoteDataSource
        .verifyOtp(phoneNumber,code)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<ReferralCodeEntity>> referralCode(String referralCode) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<ReferralCodeEntity>(ReferralCodeEntity()),
    );

    /* return authenticationRemoteDataSource
        .referralCode(referralCode)
        .mapResponseToEntityWrapper();*/
  }

  @override
  Future<EntityWrapper<IdentityEntity>> identity(
      String nationalId, String birthday) {
    return Future.delayed(
      const Duration(seconds: 5),
      () => EntityWrapper.success<IdentityEntity>(IdentityEntity()),
    );

/* return authenticationRemoteDataSource
        .sendOtp(phoneNumber)
        .mapResponseToEntityWrapper();*/
  }
}
