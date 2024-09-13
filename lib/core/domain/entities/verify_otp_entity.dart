import 'package:banx/core/domain/entities/entity.dart';

class VerifyOtpEntity extends Entity {
  final String accessToken;
  final String? refreshToken;

  VerifyOtpEntity({
    required this.accessToken,
    this.refreshToken,
  });
}
