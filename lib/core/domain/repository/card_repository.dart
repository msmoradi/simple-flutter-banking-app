import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entities/card_types_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class CardRepository {
  Future<EntityWrapper<EmptyEntity>> orders({
    required int addressId,
    required int typeId,
    required int cardShippingTimeSlotId,
    required String label,
  });

  Future<EntityWrapper<CardTypesEntity>> types();

  Future<EntityWrapper<CardShippingTimeSlotsEntity>> shippingTimeSlots();
}
