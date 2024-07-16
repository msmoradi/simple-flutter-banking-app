import 'package:dio/dio.dart';
import 'package:domain/repository/token_repository.dart';
import 'package:networking/exceptions/network_exception.dart';
import 'package:networking/model/dto/error_dto.dart';
import 'package:networking/static_header_interceptor.dart';
import 'package:networking/token_interceptor.dart';
import 'package:networking/typedefs.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'http_client.dart';
import 'api_endpoints.dart';

class ApiService implements HTTPClient {
  late final Dio _dio;
  final TokenRepository tokenRepository;

  ApiService({required this.tokenRepository}) {
    final baseOptions = BaseOptions(
      baseUrl: ApiEndpoint.baseUrl,
    );
    _dio = Dio(baseOptions);
    _dio.interceptors.add(StaticHeaderInterceptor());
    _dio.interceptors.add(TokenInterceptor(tokenRepository: tokenRepository));
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ));
  }

  @override
  Future<T> get<T>({
    required String endpoint,
    JSON? queryParameters,
    Options? options,
    required T Function(JSON responseBody) mapper,
  }) async {
    try {
      final response = await _dio.get<JSON>(
        endpoint,
        options: options,
        queryParameters: queryParameters,
      );
      return mapper(response.data!);
    } on DioException catch (result) {
      final errorModel = ErrorDto.fromJson(result.response!.data!);
      throw RequestErrorException(errorModel.message);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  @override
  Future<T> post<T>({
    required String endpoint,
    JSON? data,
    Options? options,
    required T Function(Map<String, dynamic> response) mapper,
  }) async {
    try {
      final response = await _dio.post<JSON>(
        endpoint,
        data: data,
        options: options,
      );
      return mapper(response.data!);
    } on DioException catch (result) {
      final errorModel = ErrorDto.fromJson(result.response!.data!);
      throw RequestErrorException(errorModel.message);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  @override
  Future<T> put<T>({
    required String endpoint,
    JSON? data,
    Options? options,
    required T Function(Map<String, dynamic>? response) mapper,
  }) async {
    try {
      final response = await _dio.put<JSON>(
        endpoint,
        data: data,
        options: options,
      );

      return mapper(response.data);
    } on DioException catch (result) {
      final errorModel = ErrorDto.fromJson(result.response!.data!);
      throw RequestErrorException(errorModel.message);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }
}