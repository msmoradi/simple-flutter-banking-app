import 'dart:async';

import 'package:domain/entity_wrapper.dart';
import 'package:verify_otp/data/datasource/local/verify_otp_remote_datasource.dart';
import 'package:verify_otp/data/mapper/response.mapper.dart';
import 'package:verify_otp/domain/repository/verify_otp_repository.dart';
import 'package:verify_otp/domain/verify_otp_entity.dart';

class VerifyOtpRepositoryImpl extends VerifyOtpRepository {
  VerifyOtpRepositoryImpl({required this.verifyOtpRemoteDataSource});

  final VerifyOtpRemoteDataSource verifyOtpRemoteDataSource;

  @override
  Future<EntityWrapper<VerifyOtpEntity>> login(
    String username,
    String password,
  ) {
    return verifyOtpRemoteDataSource
        .login(username, password)
        .mapResponseToEntityWrapper();
  }
}
