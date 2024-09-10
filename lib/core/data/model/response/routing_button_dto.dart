import 'package:freezed_annotation/freezed_annotation.dart';

part 'routing_button_dto.freezed.dart';

part 'routing_button_dto.g.dart';

@freezed
class RoutingButtonDto with _$RoutingButtonDto {
  const factory RoutingButtonDto({
    required String deeplink,
    required String? title,
  }) = _RoutingButtonDto;

  factory RoutingButtonDto.fromJson(Map<String, dynamic> json) =>
      _$RoutingButtonDtoFromJson(json);
}
