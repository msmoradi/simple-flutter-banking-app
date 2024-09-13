import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/generic_list_response_dto.dart';
import 'package:banx/core/data/model/get_inquiry_response_dto.dart';
import 'package:banx/core/data/model/post_address_response_dto.dart';

abstract class AddressRemoteDataSource {
  Future<GenericListResponseDto<AddressDto>> getAddress();

  Future<PostAddressResponseDto> postAddress({
    required AddressDto addressDto,
  });

  Future<PostAddressResponseDto> putAddress();

  Future<PostAddressResponseDto> getStates();

  Future<GetInquiryResponseDto> getInquiry({required String postalCode});

  Future<PostAddressResponseDto> getCities();
}
