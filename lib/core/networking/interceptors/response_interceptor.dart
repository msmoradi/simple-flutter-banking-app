import 'package:banx/main.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 403) {
      _handle403Error();
    } else if (response.statusCode == 401) {
      _handle401Error();
    } else {
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 403) {
      _handle403Error();
    } else if (err.response?.statusCode == 401) {
      _handle401Error();
    } else {
      super.onError(err, handler);
    }
  }

  void _handle401Error() {
    // call refresh
  }

  void _handle403Error() {
    // call action
    restartApp();
  }
}
