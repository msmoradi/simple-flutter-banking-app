import 'package:data/model/password_response_dto.dart';
import 'package:data/model/send_otp_response_dto.dart';
import 'package:data/model/sign_up_response_dto.dart';
import 'package:data/model/verify_otp_response_dto.dart';

abstract class AuthenticationRemoteDataSource {
  Future<SendOtpResponseDto> sendOtp(
    String phoneNumber,
  );

  Future<VerifyOtpResponseDto> verifyOtp(
    String phoneNumber,
    String otp,
  );

  Future<PasswordResponseDto> password(
    String password,
  );

  Future<VerifyOtpResponseDto> refresh(
    String refreshToken,
    String password,
  );

  Future<SignUpResponseDto> signup(
    String phoneNumber,
    String nationalId,
    String birthDate,
    String referralCode,
  );
}
