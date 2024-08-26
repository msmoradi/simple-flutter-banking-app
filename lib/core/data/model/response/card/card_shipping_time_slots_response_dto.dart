import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_shipping_time_slots_response_dto.freezed.dart';
part 'card_shipping_time_slots_response_dto.g.dart';

@freezed
class CardShippingTimeSlotsResponseDto with _$CardShippingTimeSlotsResponseDto {
  const factory CardShippingTimeSlotsResponseDto() = _CardShippingTimeSlotsResponseDto;

  factory CardShippingTimeSlotsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CardShippingTimeSlotsResponseDtoFromJson(json);

}
