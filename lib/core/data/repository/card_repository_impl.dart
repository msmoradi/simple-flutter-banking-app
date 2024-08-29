import 'package:banx/core/data/datasource/remote/card_remote_datasource.dart';
import 'package:banx/core/data/mapper/card_mapper.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entities/card_types_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CardRepository)
class CardRepositoryImpl extends CardRepository {
  CardRepositoryImpl({required this.cardRemoteDataSource});

  final CardRemoteDataSource cardRemoteDataSource;

  @override
  Future<EntityWrapper<EmptyEntity>> orders({
    required int addressId,
    required int typeId,
    required int cardShippingTimeSlotId,
    required String label,
  }) {
    return cardRemoteDataSource
        .orders(
            addressId: addressId,
            typeId: typeId,
            cardShippingTimeSlotId: cardShippingTimeSlotId,
            label: label)
        .mapResponseToEntityWrapper(mapper: (model) {
      return EmptyEntity();
    });
  }

  @override
  Future<EntityWrapper<CardShippingTimeSlotsEntity>> shippingTimeSlots() {
    return cardRemoteDataSource
        .shippingTimeSlots()
        .mapResponseToEntityWrapper(mapper: (dto) => dto.toEntity());
  }

  @override
  Future<EntityWrapper<CardTypesResponseEntity>> types() {
    return cardRemoteDataSource
        .types()
        .mapResponseToEntityWrapper(mapper: (dto) => dto.toEntity());
  }
}
