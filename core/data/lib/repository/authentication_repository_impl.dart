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
  Future<EntityWrapper<VerifyOtpEntity>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final response =
          await authenticationRemoteDataSource.verifyOtp(phoneNumber, otp);
      late PasswordAuthentication passwordAuthentication;
      if (response.passwordAuthentication == "None") {
        passwordAuthentication = PasswordAuthentication.none;
      } else if (response.passwordAuthentication == "Set") {
        passwordAuthentication = PasswordAuthentication.set;
      } else if (response.passwordAuthentication == "Verify") {
        passwordAuthentication = PasswordAuthentication.verify;
      }
      return EntityWrapper.success(VerifyOtpEntity(
          accessToken: response.access_token,
          refreshToken: response.refresh_token,
          passwordAuthentication: passwordAuthentication));
    } catch (e) {
      throw Exception('$e');
    }
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
  }) async {
    try {
      final response = await authenticationRemoteDataSource.signup(
          phoneNumber, nationalId, birthDate, referralCode);
      return EntityWrapper.success(SignUpEntity(
          expiresIn: response.expiresIn, codeLength: response.codeLength));
    } catch (e) {
      throw Exception('$e');
    }
  }

  @override
  Future<EntityWrapper<SendOtpEntity>> sendOtp(
      {required String phoneNumber}) async {
    try {
      final response =
          await authenticationRemoteDataSource.sendOtp(phoneNumber);
      return EntityWrapper.success(SendOtpEntity(
          needSignup: response.needSignup,
          needReferralCode: response.needReferralCode,
          expiresIn: response.expiresIn,
          codeLength: response.codeLength));
    } catch (e) {
      throw Exception('$e');
    }
  }
}
