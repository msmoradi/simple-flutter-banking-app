import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/interceptors/info_interceptor.dart';
import 'package:banx/core/networking/interceptors/response_interceptor.dart';
import 'package:banx/core/networking/interceptors/token_interceptor.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:banx/di.config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
      Dio(BaseOptions(baseUrl: url))
        ..interceptors.add(responseInterceptor)
        ..interceptors.add(infoInterceptor)
        ..interceptors.add(tokenInterceptor)
        ..interceptors.add(prettyDioLogger);

  @lazySingleton
  FlutterSecureStorage flutterSecureStorage() => const FlutterSecureStorage(
          aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ));

  @preResolve
  @lazySingleton
  Future<BanxConfig> banxConfig(TokenRepository tokenRepository) async {
    final config = BanxConfig(tokenRepository: tokenRepository);
    return config;
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
}
