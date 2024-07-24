import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/generic_response_dto.dart';
import 'package:banx/core/data/model/post_address_response_dto.dart';

abstract class AddressRemoteDataSource {
  Future<GenericResponseDto<AddressDto>> getAddress();

  Future<PostAddressResponseDto> postAddress({required String postalCode});

  Future<PostAddressResponseDto> putAddress();
}
