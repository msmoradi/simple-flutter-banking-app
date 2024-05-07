import 'dart:async';

import 'package:domain/entity_wrapper.dart';
import 'package:signup/data/datasource/local/sign_up_remote_datasource.dart';
import 'package:signup/data/mapper/response.mapper.dart';
import 'package:signup/domain/repository/sign_up_repository.dart';
import 'package:signup/domain/sign_up_entity.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  SignUpRepositoryImpl({required this.signUpRemoteDataSource});

  final SignUpRemoteDataSource signUpRemoteDataSource;

  @override
  Future<EntityWrapper<SignUpEntity>> signUp(
    String firstName,
    String lastName,
    String emailAddress,
    String password,
    bool isAcceptContracts,
  ) {
    return signUpRemoteDataSource
        .signUp(firstName, lastName, emailAddress, password, isAcceptContracts)
        .mapResponseToEntityWrapper();
  }
}
