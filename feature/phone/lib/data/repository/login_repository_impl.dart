import 'dart:async';

import 'package:domain/entity_wrapper.dart';
import 'package:login/data/datasource/local/login_remote_datasource.dart';
import 'package:login/data/mapper/response.mapper.dart';
import 'package:login/domain/repository/login_repository.dart';
import 'package:login/domain/login_entity.dart';

class LoginRepositoryImpl extends LoginRepository {
  LoginRepositoryImpl({required this.loginRemoteDataSource});

  final LoginRemoteDataSource loginRemoteDataSource;

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
