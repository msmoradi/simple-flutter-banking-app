import 'package:login/data/model/login_response_dto.dart';
import 'package:networking/model/dto/network_response.dart';

abstract class LoginRemoteDataSource {
  Future<NetworkResponse<LoginResponseDto>> login(
    String username,
    String password,
  );
}
