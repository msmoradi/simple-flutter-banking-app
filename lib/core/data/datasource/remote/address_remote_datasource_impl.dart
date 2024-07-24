import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/model/post_address_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressRemoteDataSource)
class AddressRemoteDataSourceImpl extends AddressRemoteDataSource {
  final HTTPClient apiService;

  AddressRemoteDataSourceImpl({required this.apiService});

  @override
  Future<PostAddressResponseDto> getAddress() {
    return apiService.get(
        endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
        mapper: PostAddressResponseDto.fromJson);
  }

  @override
  Future<PostAddressResponseDto> postAddress({required String postalCode}) {
    final body = {
      'password': "",
    };

    return apiService.post(
        endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
        data: body,
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
