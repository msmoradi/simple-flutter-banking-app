import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_address_response_dto.freezed.dart';
part 'post_address_response_dto.g.dart';

@freezed
class PostAddressResponseDto with _$PostAddressResponseDto {
  const factory PostAddressResponseDto() = _AddressResponseDto;

  factory PostAddressResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PostAddressResponseDtoFromJson(json);

  factory PostAddressResponseDto.empty() {
    return const PostAddressResponseDto();
  }
}
