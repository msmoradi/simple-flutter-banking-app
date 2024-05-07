import 'dart:async';

import 'package:domain/entity_wrapper.dart';
import 'package:forgot_password/data/datasource/local/forgot_password_remote_datasource.dart';
import 'package:forgot_password/data/mapper/forgot_password_response_mapper.dart';
import 'package:forgot_password/domain/forgot_password_entity.dart';
import 'package:forgot_password/domain/repository/forgot_password_repository.dart';

class ForgotPasswordRepositoryImpl extends ForgotPasswordRepository {
  ForgotPasswordRepositoryImpl({required this.forgotPasswordRemoteDataSource});

  final ForgotPasswordRemoteDataSource forgotPasswordRemoteDataSource;

  @override
  Future<EntityWrapper<ForgotPasswordEntity>> forgotPassword(
    String emailAddress,
  ) {
    return forgotPasswordRemoteDataSource
        .forgotPassword(emailAddress)
        .mapResponseToEntityWrapper();
  }
}
