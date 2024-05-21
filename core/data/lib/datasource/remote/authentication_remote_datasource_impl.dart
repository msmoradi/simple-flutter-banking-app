import 'package:data/datasource/remote/authentication_remote_datasource.dart';
import 'package:data/model/send_otp_response_dto.dart';
import 'package:data/model/verify_otp_response_dto.dart';
import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';
import 'package:networking/model/dto/network_response.dart';

class AuthenticationRemoteDataSourceImpl
    extends AuthenticationRemoteDataSource {
  final HTTPClient _apiService;

  AuthenticationRemoteDataSourceImpl(HTTPClient apiService)
      : _apiService = apiService;

  @override
  Future<NetworkResponse<SendOtpResponseDto>> sendOtp(
    String phoneNumber,
  ) async {
    final body = {
      'phoneNumber': phoneNumber,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.SEND_OTP),
        data: body,
        mapper: SendOtpResponseDto.json);
  }

  @override
  Future<NetworkResponse<VerifyOtpResponseDto>> verifyOtp(
    String phoneNumber,
    String code,
  ) async {
    final body = {
      'phoneNumber': phoneNumber,
      'code': code,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.VERIFY_OTP),
        data: body,
        mapper: VerifyOtpResponseDto.json);
  }
}
