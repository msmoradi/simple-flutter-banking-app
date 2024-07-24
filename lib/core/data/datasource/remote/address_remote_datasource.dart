import 'package:banx/core/data/model/post_address_response_dto.dart';

abstract class AddressRemoteDataSource {
  Future<PostAddressResponseDto> getAddress();

  Future<PostAddressResponseDto> postAddress({required String postalCode});

  Future<PostAddressResponseDto> putAddress();
}
