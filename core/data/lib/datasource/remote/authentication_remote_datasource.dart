import 'package:data/model/password_response_dto.dart';
import 'package:data/model/send_otp_response_dto.dart';
import 'package:data/model/sign_up_response_dto.dart';
import 'package:data/model/verify_otp_response_dto.dart';
import 'package:networking/model/dto/network_response.dart';

abstract class AuthenticationRemoteDataSource {
  Future<NetworkResponse<SendOtpResponseDto>> sendOtp(
    String phoneNumber,
  );

  Future<NetworkResponse<VerifyOtpResponseDto>> verifyOtp(
    String phoneNumber,
    String otp,
  );

  Future<NetworkResponse<PasswordResponseDto>> password(
    String password,
  );

  Future<NetworkResponse<VerifyOtpResponseDto>> refresh(
    String refreshToken,
    String password,
  );

  Future<NetworkResponse<SignUpResponseDto>> signup(
    String phoneNumber,
    String nationalId,
    String birthDate,
    String referralCode,
  );
}
