import 'package:banx/core/data/model/city_dto.dart';
import 'package:banx/core/data/model/state_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    int? id,
    int? accountId,
    required String postalCode,
    required double latitude,
    required double longitude,
    required String address,
    required CityDto city,
    required StateDto state,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);
}
