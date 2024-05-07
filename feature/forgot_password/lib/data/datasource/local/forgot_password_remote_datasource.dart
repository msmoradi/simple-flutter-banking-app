import 'package:forgot_password/data/model/forgot_password_response_dto.dart';
import 'package:networking/model/dto/network_response.dart';

abstract class ForgotPasswordRemoteDataSource {
  Future<NetworkResponse<ForgotPasswordResponseDto>> forgotPassword(
    String emailAddress,
  );
}
