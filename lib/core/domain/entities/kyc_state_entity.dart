import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/kyc_status_dto.dart';
import 'package:banx/core/domain/entities/routing_button_entity.dart';

class KycStateEntity extends Entity {
  KycStateEntity({
    required RoutingButtonEntity routingButton,
    required KYCStatusEntity identity,
    required KYCStatusEntity phoneNumber,
    required KYCStatusEntity face,
    required KYCStatusEntity sayah,
  });
}
