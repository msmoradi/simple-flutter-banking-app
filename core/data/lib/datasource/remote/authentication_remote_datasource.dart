import 'package:data/model/referral_code_response_dto.dart';
import 'package:data/model/send_otp_response_dto.dart';
import 'package:data/model/verify_otp_response_dto.dart';
import 'package:networking/model/dto/network_response.dart';

abstract class AuthenticationRemoteDataSource {
  Future<NetworkResponse<SendOtpResponseDto>> sendOtp(
    String phoneNumber,
  );

  Future<NetworkResponse<VerifyOtpResponseDto>> verifyOtp(
    String phoneNumber,
    String code,
  );

  Future<NetworkResponse<ReferralCodeResponseDto>> referralCode(
    String referralCode,
  );
}
