import 'dart:io';
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final Function(RequestOptions) repeatRequest;

  TokenInterceptor({required this.repeatRequest});

  Future<String> refreshToken() async {
    // TODO Perform a request to the refresh token endpoint and return the new access token.
    return 'your_new_access_token';
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var token = "sample token";

    options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // If a 401 response is received, refresh the access token
      String newAccessToken = await refreshToken();

      // Update the request header with the new access token
      err.requestOptions.headers[HttpHeaders.authorizationHeader] =
          'Bearer $newAccessToken';

      // Repeat the request with the updated header
      return handler.resolve(await repeatRequest(err.requestOptions));
    }
    return super.onError(err, handler);
  }
}
