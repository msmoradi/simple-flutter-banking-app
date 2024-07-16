import 'package:dio/dio.dart';
import 'package:domain/repository/token_repository.dart';

class TokenInterceptor extends Interceptor {
  final TokenRepository tokenRepository;

  TokenInterceptor({required this.tokenRepository});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final String? token = await tokenRepository.getAccessToken();
    if (token != null) {
      options.headers.addAll({
        "Authorization": "Bearer $token",
      });
    }
    return super.onRequest(options, handler);
  }
}
