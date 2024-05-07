import 'package:networking/exceptions/network_exception.dart';
import 'package:networking/model/dto/response_model.dart';
import 'package:networking/typedefs.dart';
import 'package:dio/dio.dart';

import 'api_endpoints.dart';

class DioService {
  late final Dio _dio;

  DioService() {
    final baseOptions = BaseOptions(
      baseUrl: ApiEndpoint.baseUrl,
    );
    _dio = Dio(baseOptions);
  }

  Future<T> get<T>({
    required String url,
    JSON? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<JSON>(
          url,
          options: options,
          queryParameters: queryParameters
      );
      final model = ResponseModel<T>.fromJson(response.data!);
      if (model.data != null) {
        return model.data!;
      } else {
        throw ParseDataException(url);
      }
    } catch(e) {
      throw RequestErrorException(e.toString());
    }
  }

  Future<T> post<T>({
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
      final model = ResponseModel<T>.fromJson(response.data!);
      if (model.data != null) {
        return model.data!;
      } else {
        throw ParseDataException(url);
      }
    } on DioError catch (result) {
      final response = ResponseModel.fromJson(result.response?.data);
      throw RequestErrorException(response.error?.details?.first.message);
    } catch (e){
      throw RequestErrorException(e.toString());
    }
  }
}