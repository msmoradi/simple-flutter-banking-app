import 'package:data/datasource/remote/profile_remote_datasource.dart';
import 'package:data/model/user_profile_response_dto.dart';
import 'package:networking/api_endpoints.dart';
import 'package:networking/http_client.dart';

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final HTTPClient _apiService;

  ProfileRemoteDataSourceImpl(HTTPClient apiService) : _apiService = apiService;

  @override
  Future<UserProfileResponseDto> getProfile() {
    final body = {};
    return _apiService.post(
        endpoint: ApiEndpoint.getProfile(ProfileEndpoint.GET_PROFILE),
        data: null,
        mapper: UserProfileResponseDto.fromJson);
  }
}
