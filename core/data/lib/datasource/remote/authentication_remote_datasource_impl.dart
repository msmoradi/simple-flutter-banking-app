import 'package:data/datasource/remote/authentication_remote_datasource.dart';
import 'package:data/model/password_response_dto.dart';
import 'package:data/model/send_otp_response_dto.dart';
import 'package:data/model/sign_up_response_dto.dart';
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
    String otp,
  ) async {
    final body = {
      'phoneNumber': phoneNumber,
      'otp': otp,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.VERIFY_OTP),
        data: body,
        mapper: VerifyOtpResponseDto.json);
  }

  @override
  Future<NetworkResponse<PasswordResponseDto>> password(String password) async {
    final body = {
      'password': password,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.PASSWORD),
        data: body,
        mapper: PasswordResponseDto.json);
  }

  @override
  Future<NetworkResponse<VerifyOtpResponseDto>> refresh(
    String refreshToken,
    String password,
  ) async {
    final body = {
      'refreshToken': refreshToken,
      'password': password,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.REFRESH),
        data: body,
        mapper: VerifyOtpResponseDto.json);
  }

  @override
  Future<NetworkResponse<SignUpResponseDto>> signup(
    String phoneNumber,
    String nationalId,
    String birthDate,
    String referralCode,
  ) async {
    final body = {
      'phoneNumber': phoneNumber,
      'nationalId': nationalId,
      'birthDate': birthDate,
      'referralCode': referralCode,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.SIGN_UP),
        data: body,
        mapper: SignUpResponseDto.json);
  }
}
