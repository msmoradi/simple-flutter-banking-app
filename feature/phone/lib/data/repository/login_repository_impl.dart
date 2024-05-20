import 'dart:async';

import 'package:domain/entity_wrapper.dart';
import 'package:phone/data/datasource/local/login_remote_datasource.dart';
import 'package:phone/data/mapper/response.mapper.dart';
import 'package:phone/domain/login_entity.dart';
import 'package:phone/domain/repository/login_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({required this.loginRemoteDataSource});

  final AuthenticationRemoteDataSource loginRemoteDataSource;

  @override
  Future<EntityWrapper<LoginEntity>> login(
    String username,
    String password,
  ) {
    return loginRemoteDataSource
        .login(username, password)
        .mapResponseToEntityWrapper();
  }
}
