import 'dart:async';

import 'package:domain/entity_wrapper.dart';
import 'package:phone/data/datasource/local/authentication_remote_datasource.dart';
import 'package:phone/data/mapper/response.mapper.dart';
import 'package:phone/domain/login_entity.dart';
import 'package:phone/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({required this.authenticationRemoteDataSource});

  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  @override
  Future<EntityWrapper<LoginEntity>> login(
    String username,
    String password,
  ) {
    return authenticationRemoteDataSource
        .login(username, password)
        .mapResponseToEntityWrapper();
  }
}
