import 'dart:io';

import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? token = null;
    options.headers.addAll({
      "Content-Type": "application/json",
      "locale": "fa",
      "device-uid": "device",
    });
    // get token from the storage
    if (token != null) {
      options.headers.addAll({
        "Authorization": "Bearer ${token}",
      });
    }
    return super.onRequest(options, handler);
  }
}
