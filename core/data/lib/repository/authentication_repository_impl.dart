import 'dart:async';

import 'package:data/datasource/remote/authentication_remote_datasource.dart';
import 'package:domain/entities/send_otp_entity.dart';
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
}
