import 'package:networking/model/dto/network_response.dart';
import 'package:verify_otp/data/model/verify_otp_response_dto.dart';

abstract class VerifyOtpRemoteDataSource {
  Future<NetworkResponse<VerifyOtpResponseDto>> login(
    String username,
    String password,
  );
}
