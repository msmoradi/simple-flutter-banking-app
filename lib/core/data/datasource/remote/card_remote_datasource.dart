import 'package:banx/core/data/model/response/card/card_shipping_time_slots_response_dto.dart';
import 'package:banx/core/data/model/response/card/card_types_response_dto.dart';

abstract class CardRemoteDataSource {
  Future<void> orders({
    required int addressId,
    required int typeId,
    required int cardShippingTimeSlotId,
    required String label,
  });

  Future<CardTypesResponseDto> types();

  Future<CardShippingTimeSlotsResponseDto> shippingTimeSlots();
}
