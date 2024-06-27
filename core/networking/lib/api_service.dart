import 'package:dio/dio.dart';
import 'package:networking/typedefs.dart';

import 'dio_service.dart';
import 'http_client.dart';

class ApiService implements HTTPClient {
  final DioService _dioService = DioService();

  @override
  Future<T> get<T>({
    required String endpoint,
    JSON? queryParameters,
    Options? options,
    required T Function(JSON responseBody) mapper,
  }) async {
    try {
      final response = await _dioService.get(
          url: endpoint, queryParameters: queryParameters, options: options);
      return mapper(response.data!);
    } catch (e) {
      throw (e.toString());
    }
  }

  @override
  Future<T> post<T>(
      {required String endpoint,
      JSON? data,
      Options? options,
      required T Function(Map<String, dynamic> response) mapper}) async {
    try {
      final response =
          await _dioService.post(url: endpoint, data: data, options: options);
      if (response.statusCode == 200) {
        if (response.data != null) {
          return mapper(response.data!);
        } else {
          throw Exception('response data is null');
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data ApiService post : $e');
    }
  }
}
