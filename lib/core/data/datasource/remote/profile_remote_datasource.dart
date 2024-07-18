import 'package:banx/core/data/model/check_postal_code_response_dto.dart';
import 'package:banx/core/data/model/user_profile_response_dto.dart';

abstract class ProfileRemoteDataSource {
  Future<UserProfileResponseDto> getProfile();

  Future<CheckPostalCodeResponseDto> checkPostalCode(
      String postalCode
      );
}
