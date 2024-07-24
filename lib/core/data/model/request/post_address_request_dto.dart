import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_address_request_dto.freezed.dart';
part 'post_address_request_dto.g.dart';

@freezed
class PostAddressRequestDto with _$PostAddressRequestDto {
  const factory PostAddressRequestDto({
    required String postalCode,
  }) = _PostAddressRequestDto;

  factory PostAddressRequestDto.fromJson(Map<String, dynamic> json) => _$PostAddressRequestDtoFromJson(json);
}
