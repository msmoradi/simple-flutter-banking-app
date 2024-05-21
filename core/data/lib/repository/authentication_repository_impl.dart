import 'dart:async';

import 'package:data/datasource/remote/authentication_remote_datasource.dart';
import 'package:data/mapper/response.mapper.dart';
import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({required this.authenticationRemoteDataSource});

  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  @override
  Future<EntityWrapper<SendOtpEntity>> sendOtp(String phoneNumber) {
/*    if (_user != null) {
      return EntityWrapper.success<LoginEntity>(_user!);
    }
    Future.delayed(
      const Duration(milliseconds: 300),
          () => _user = UserEntity(const Uuid().v4()),
    );
    return EntityWrapper.success<UserEntity>(_user!);*/

    return authenticationRemoteDataSource
        .sendOtp(phoneNumber)
        .mapResponseToEntityWrapper();
  }
}
