import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/kyc_status_dto.dart';
import 'package:banx/core/domain/entities/routing_button_entity.dart';

class KycStateEntity extends Entity {
  final RoutingButtonEntity? routingButton;
  final KYCStatusEntity identity;
  final KYCStatusEntity phoneNumber;
  final KYCStatusEntity face;
  final KYCStatusEntity sayah;

  KycStateEntity({
    required this.routingButton,
    required this.identity,
    required this.phoneNumber,
    required this.face,
    required this.sayah,
  });
}
