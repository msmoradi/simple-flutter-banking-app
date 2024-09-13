import 'package:banx/core/data/model/password_response_dto.dart';
import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/data/model/send_otp_response_dto.dart';
import 'package:banx/core/data/model/sign_up_response_dto.dart';
import 'package:banx/core/data/model/verify_otp_response_dto.dart';

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
  );

  Future<KycResponseDto> kyc();

  Future<SignUpResponseDto> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    String? referralCode,
  });
}
