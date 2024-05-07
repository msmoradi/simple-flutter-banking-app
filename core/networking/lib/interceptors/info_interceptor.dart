import 'package:dio/dio.dart';

class InfoInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO get real data and replace with hardcoded string
    options.headers['platform'] = 'Mobile';
    options.headers['operatingSystem'] = 'IOS';
    options.headers['browser'] = 'Chrome';
    super.onRequest(options, handler);
  }
}
