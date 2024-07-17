import 'package:data/datasource/remote/profile_remote_datasource.dart';
import 'package:data/model/check_postal_code_response_dto.dart';
import 'package:data/model/user_profile_response_dto.dart';
import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final HTTPClient _apiService;

  ProfileRemoteDataSourceImpl(HTTPClient apiService) : _apiService = apiService;

  @override
  Future<UserProfileResponseDto> getProfile() {
    return _apiService.get(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.GET_PROFILE),
        mapper: UserProfileResponseDto.fromJson);
  }

  @override
  Future<CheckPostalCodeResponseDto> checkPostalCode(String postalCode) {
    final body = {
      'postalCode': postalCode,
    };

    return _apiService.post(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.POSTAL_CODE),
        data: body,
        mapper: CheckPostalCodeResponseDto.fromJson);
  }
}
