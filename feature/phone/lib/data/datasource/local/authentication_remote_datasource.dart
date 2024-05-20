import 'package:networking/model/dto/network_response.dart';
import 'package:phone/data/model/login_response_dto.dart';

abstract class AuthenticationRemoteDataSource {
  Future<NetworkResponse<LoginResponseDto>> login(
    String username,
    String password,
  );
}
