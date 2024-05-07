import 'package:dio/dio.dart';
import 'package:networking/typedefs.dart';
import 'dio_service.dart';
import 'http_client.dart';
import 'model/dto/network_response.dart';
import 'model/dto/response_model.dart';

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
      final response = await _dioService.get<JSON>(
          url: endpoint,
          queryParameters: queryParameters,
          options: options);
      return mapper(response);

    } on DioError catch (result) {
      final response = ResponseModel.fromJson(result.response?.data);
      throw(response.error?.details?.first.message ?? '');
    } catch (e){
      throw(e.toString());
    }
  }

  @override
  Future<NetworkResponse<T>> post<T>({
    required String endpoint,
    JSON? data,
    Options? options,
    required T Function(Map<String, dynamic> response) mapper}) async {
    try {
      final response = await _dioService.post(
          url: endpoint,
          data: data,
          options: options);
      return NetworkResponse.ok(mapper(response));
    } catch(e) {
      return NetworkResponse.error(e.toString());
    }
  }
}