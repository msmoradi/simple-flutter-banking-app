import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart';
import 'package:banx/core/data/model/check_postal_code_response_dto.dart';
import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final HTTPClient apiService;

  ProfileRemoteDataSourceImpl({required this.apiService});

  @override
  Future<UserProfileResponseDto> getProfile() {
    return apiService.get(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.GET_PROFILE),
        mapper: UserProfileResponseDto.fromJson);
  }

  @override
  Future<CheckPostalCodeResponseDto> checkPostalCode(String postalCode) {
    final body = {
      'postalCode': postalCode,
    };

    return apiService.post(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.POSTAL_CODE),
        data: body,
        mapper: CheckPostalCodeResponseDto.fromJson);
  }
}
