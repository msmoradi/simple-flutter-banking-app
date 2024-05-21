import 'package:data/model/send_otp_response_dto.dart';
import 'package:networking/model/dto/network_response.dart';

abstract class AuthenticationRemoteDataSource {
  Future<NetworkResponse<SendOtpResponseDto>> sendOtp(
    String phoneNumber,
  );
}
