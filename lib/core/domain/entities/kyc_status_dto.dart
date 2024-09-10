import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/domain/entities/entity.dart';

class KYCStatusEntity extends Entity {
  final KYCStatus status;
  final String title;
  final String description;

  KYCStatusEntity({
    required this.status,
    required this.title,
    required this.description,
  });
}
