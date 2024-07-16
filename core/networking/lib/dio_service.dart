import 'package:dio/dio.dart';
import 'package:networking/token_interceptor.dart';
import 'package:networking/exceptions/network_exception.dart';
import 'package:networking/model/dto/error_dto.dart';
import 'package:networking/static_header_interceptor.dart';
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
    _dio.interceptors.add(StaticHeaderInterceptor());
    _dio.interceptors.add(TokenInterceptor());
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
  }) {
    try {
      return _dio.get<JSON>(url,
          options: options, queryParameters: queryParameters);
    } on DioException catch (result) {
      final errorModel = ErrorDto.fromJson(result.response!.data!);
      throw RequestErrorException(errorModel.message);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  Future<Response<JSON>> post({
    required String url,
    JSON? data,
    Options? options,
  }) {
    try {
      return _dio.post<JSON>(
        url,
        data: data,
        options: options,
      );
    } on DioException catch (result) {
      final errorModel = ErrorDto.fromJson(result.response!.data!);
      throw RequestErrorException(errorModel.message);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  Future<Response<JSON>> put({
    required String url,
    JSON? data,
    Options? options,
  }) {
    try {
      return _dio.put<JSON>(
        url,
        data: data,
        options: options,
      );
    } on DioException catch (result) {
      final errorModel = ErrorDto.fromJson(result.response!.data!);
      throw RequestErrorException(errorModel.message);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }
}
