import 'package:dio/dio.dart';
import 'package:networking/dio_interceptor.dart';
import 'package:networking/exceptions/network_exception.dart';
import 'package:networking/typedefs.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_endpoints.dart';

class DioService {
  late final Dio _dio;

  DioService() {
    final baseOptions = BaseOptions(
      baseUrl: ApiEndpoint.baseUrl,
    );
    _dio = Dio(baseOptions);
    _dio.interceptors.add(DioInterceptor());
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ));
  }

  Future<Response<JSON>> get({
    required String url,
    JSON? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<JSON>(url,
          options: options, queryParameters: queryParameters);
      return response;
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  Future<Response<JSON>> post({
    required String url,
    JSON? data,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<JSON>(
        url,
        data: data,
        options: options,
      );
      return response;
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }
}
