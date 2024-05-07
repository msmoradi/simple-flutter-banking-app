import 'package:networking/model/dto/network_response.dart';
import 'package:signup/data/model/sign_up_response_dto.dart';

abstract class SignUpRemoteDataSource {
  Future<NetworkResponse<SignUpResponseDto>> signUp(
    String firstName,
    String lastName,
    String emailAddress,
    String password,
    bool isAcceptContracts,
  );
}
