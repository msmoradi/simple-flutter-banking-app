library network_manager;
import 'package:networking/typedefs.dart';
import 'model/dto/network_response.dart';

abstract class HTTPClient {
  // Mapper is a function that convert JSON to the T model
  Future<T> get<T>({
    required String endpoint,
    JSON? queryParameters,
    required T Function(JSON responseBody) mapper,
  });

  Future<T> post<T>({
    required String endpoint,
    JSON? data,
    required T Function(Map<String, dynamic> response) mapper
  });
}
