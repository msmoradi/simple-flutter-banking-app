import 'dart:io';

import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? token = null;
    if (token != null) {
      options.headers.addAll({
        "Authorization": "Bearer ${token}",
      });
    }
    return super.onRequest(options, handler);
  }
}
