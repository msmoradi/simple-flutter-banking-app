import 'package:domain/entities/entity.dart';

class SendOtpEntity extends Entity {
  final String phoneNumber;
  final String sessionId;
  final int numCells;

  SendOtpEntity(this.phoneNumber, this.sessionId, this.numCells);
}
