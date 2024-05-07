import 'package:forgot_password/data/datasource/local/forgot_password_remote_datasource.dart';
import 'package:forgot_password/data/model/forgot_password_response_dto.dart';
import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';
import 'package:networking/model/dto/network_response.dart';

class ForgotPasswordRemoteDataSourceImpl
    extends ForgotPasswordRemoteDataSource {
  final HTTPClient _apiService;

  ForgotPasswordRemoteDataSourceImpl(HTTPClient apiService) : _apiService = apiService;

  @override
  Future<NetworkResponse<ForgotPasswordResponseDto>> forgotPassword(
    String emailAddress,
  ) async {
    final body = {
      'emailAddress': emailAddress,
    };

    return await _apiService.post<ForgotPasswordResponseDto>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.RESET_PASSWORD),
        data: body,
        mapper: ForgotPasswordResponseDto.json);
  }
}
