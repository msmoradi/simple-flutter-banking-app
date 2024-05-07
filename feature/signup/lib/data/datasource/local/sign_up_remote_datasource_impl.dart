import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';
import 'package:networking/model/dto/network_response.dart';
import 'package:signup/data/datasource/local/sign_up_remote_datasource.dart';
import 'package:signup/data/model/sign_up_response_dto.dart';

class SignUpRemoteDataSourceImpl extends SignUpRemoteDataSource {
  final HTTPClient _apiService;

  SignUpRemoteDataSourceImpl(HTTPClient apiService) : _apiService = apiService;

  @override
  Future<NetworkResponse<SignUpResponseDto>> signUp(
    String firstName,
    String lastName,
    String emailAddress,
    String password,
    bool isAcceptContracts,
  ) async {
    final body = {
      'firstName': firstName,
      'lastName': lastName,
      'emailAddress': emailAddress,
      'password': password,
      'isAcceptContracts': isAcceptContracts,
    };

    return await _apiService.post(
        endpoint: ApiEndpoint.auth(AuthEndpoint.REGISTER),
        data: body,
        mapper: SignUpResponseDto.json);
  }
}
