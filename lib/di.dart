import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/interceptors/info_interceptor.dart';
import 'package:banx/core/networking/interceptors/token_interceptor.dart';
import 'package:banx/di.config.dart';
import 'package:dio/dio.dart';
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

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url, TokenRepository tokenRepository) =>
      Dio(BaseOptions(baseUrl: url))
        ..interceptors.add(InfoInterceptor())
        ..interceptors.add(TokenInterceptor(tokenRepository: tokenRepository))
        ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
        ));
}
