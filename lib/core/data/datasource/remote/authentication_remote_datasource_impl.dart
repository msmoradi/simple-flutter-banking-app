import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart';
import 'package:banx/core/data/model/password_response_dto.dart';
import 'package:banx/core/data/model/send_otp_response_dto.dart';
import 'package:banx/core/data/model/sign_up_response_dto.dart';
import 'package:banx/core/data/model/verify_otp_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl
    extends AuthenticationRemoteDataSource {
  final HTTPClient apiService;

  AuthenticationRemoteDataSourceImpl({required this.apiService});

  @override
  Future<SendOtpResponseDto> sendOtp(
    String phoneNumber,
  ) {
    final body = {
      'phoneNumber': phoneNumber,
    };
    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SEND_OTP),
      data: body,
      mapper: (response) {
        if (response != null) {
          return SendOtpResponseDto.fromJson(response);
        }
        throw NotNullableError('sendOtp response should not be null');
      },
    );
  }

  @override
  Future<VerifyOtpResponseDto> verifyOtp(
    String phoneNumber,
    String otp,
  ) {
    final body = {
      'phoneNumber': phoneNumber,
      'otp': otp,
    };
    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.VERIFY_OTP),
      data: body,
      mapper: (response) {
        if (response != null) {
          return VerifyOtpResponseDto.fromJson(response);
        }
        throw NotNullableError('verifyOtp response should not be null');
      },
    );
  }

  @override
  Future<PasswordResponseDto> password(String password) {
    final body = {
      'password': password,
    };

    return apiService.put(
      endpoint: ApiEndpoint.auth(AuthEndpoint.PASSWORD),
      data: body,
      mapper: (_) {
        return PasswordResponseDto.empty();
      },
    );
  }

  @override
  Future<VerifyOtpResponseDto> refresh(
    String refreshToken,
  ) {
    final body = {
      'refreshToken': refreshToken,
    };

    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.REFRESH),
      data: body,
      mapper: (response) {
        if (response != null) {
          return VerifyOtpResponseDto.fromJson(response);
        }
        throw NotNullableError('refresh response should not be null');
      },
    );
  }

  @override
  Future<SignUpResponseDto> signup(
    String phoneNumber,
    String nationalId,
    String birthDate,
    String referralCode,
  ) {
    final body = {
      'phoneNumber': phoneNumber,
      'nationalId': nationalId,
      'birthDate': birthDate,
      'referralCode': referralCode,
    };

    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SIGN_UP),
      data: body,
      mapper: (response) {
        if (response != null) {
          return SignUpResponseDto.fromJson(response);
        }
        throw NotNullableError('signup response should not be null');
      },
    );
  }
}
