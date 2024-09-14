import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/interceptors/info_interceptor.dart';
import 'package:banx/core/networking/interceptors/response_interceptor.dart';
import 'package:banx/core/networking/interceptors/token_interceptor.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:banx/core/utils/localauth/local_auth_helper.dart';
import 'package:banx/di.config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'core/utils/localauth/local_auth_setup.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("BaseUrl")
  String get baseUrl => ApiEndpoint.baseUrl;

  @lazySingleton
  Dio dio(
    @Named('BaseUrl') String url,
    ResponseInterceptor responseInterceptor,
    TokenInterceptor tokenInterceptor,
    InfoInterceptor infoInterceptor,
    PrettyDioLogger prettyDioLogger,
  ) =>
      Dio()
        ..options.baseUrl = url
        ..interceptors.add(responseInterceptor)
        ..interceptors.add(infoInterceptor)
        ..interceptors.add(tokenInterceptor)
        ..interceptors.add(prettyDioLogger);

  @lazySingleton
  FlutterSecureStorage flutterSecureStorage() => const FlutterSecureStorage(
        iOptions: IOSOptions(
            accountName: "Banx",
            accessibility: KeychainAccessibility.first_unlock),
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );

  @preResolve
  @lazySingleton
  Future<BanxConfig> banxConfig(
    TokenRepository tokenRepository,
    ProfileRepository profileRepository,
  ) async {
    return BanxConfig(
      tokenRepository: tokenRepository,
      profileRepository: profileRepository,
    );
  }

  @lazySingleton
  PrettyDioLogger prettyDioLogger() => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: false,
      );

  @lazySingleton
  LocalAuthHelper localAuthHelperImpl(
          LocalAuthentication localAuthentication) =>
      LocalAuthHelperImpl(localAuthentication);

  @lazySingleton
  LocalAuthentication localAuthentication() => LocalAuthentication();
}
