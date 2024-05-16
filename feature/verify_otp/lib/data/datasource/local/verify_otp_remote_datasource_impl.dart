import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';
import 'package:networking/model/dto/network_response.dart';
import 'package:verify_otp/data/datasource/local/verify_otp_remote_datasource.dart';
import 'package:verify_otp/data/model/verify_otp_response_dto.dart';

class VerifyOtpRemoteDataSourceImpl extends VerifyOtpRemoteDataSource {
  final HTTPClient _apiService;

  VerifyOtpRemoteDataSourceImpl(HTTPClient apiService) : _apiService = apiService;

  @override
  Future<NetworkResponse<VerifyOtpResponseDto>> login(
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
        mapper: VerifyOtpResponseDto.json);
  }
}
