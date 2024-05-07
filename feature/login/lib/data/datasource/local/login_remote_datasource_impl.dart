import 'package:login/data/datasource/local/login_remote_datasource.dart';
import 'package:login/data/model/login_response_dto.dart';
import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';
import 'package:networking/model/dto/network_response.dart';

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final HTTPClient _apiService;

  LoginRemoteDataSourceImpl(HTTPClient apiService) : _apiService = apiService;

  @override
  Future<NetworkResponse<LoginResponseDto>> login(
    String username,
    String password,
  ) async {
    final body = {
      'username': username,
      'password': password,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.LOGIN),
        data: body,
        mapper: LoginResponseDto.json);
  }
}
