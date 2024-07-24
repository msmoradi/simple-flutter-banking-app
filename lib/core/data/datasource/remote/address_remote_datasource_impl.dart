import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/generic_response_dto.dart';
import 'package:banx/core/data/model/post_address_response_dto.dart';
import 'package:banx/core/data/model/request/get_address_request_dto.dart';
import 'package:banx/core/data/model/request/post_address_request_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressRemoteDataSource)
class AddressRemoteDataSourceImpl extends AddressRemoteDataSource {
  final HTTPClient apiService;

  AddressRemoteDataSourceImpl({required this.apiService});

  @override
  Future<GenericResponseDto<AddressDto>> getAddress() {
    final requestParameters = const GetAddressRequestDto(
      page: 0,
      size: 1,
      sort: ["id", "desc"],
    ).toJson();

    return apiService.get(
      endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
      queryParameters: requestParameters,
      mapper: (responseBody) {
        return GenericResponseDto<AddressDto>.fromJson(
          responseBody,
          (json) => AddressDto.fromJson(json as Map<String, dynamic>),
        );
      },
    );
  }

  @override
  Future<PostAddressResponseDto> postAddress({required String postalCode}) {
    final dataRequest = PostAddressRequestDto(postalCode: postalCode).toJson();

    return apiService.post(
        endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
        data: dataRequest,
        mapper: (_) {
          return PostAddressResponseDto.empty();
        });
  }

  @override
  Future<PostAddressResponseDto> putAddress() {
    final body = {
      'password': "",
    };

    return apiService.put(
      endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
      data: body,
      mapper: (_) {
        return PostAddressResponseDto.empty();
      },
    );
  }
}
