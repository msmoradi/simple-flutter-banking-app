import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/password_authentication.dart';

class VerifyOtpEntity extends Entity {
  final String accessToken;
  final String refreshToken;
  final PasswordAuthentication passwordAuthentication;

  VerifyOtpEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.passwordAuthentication,
  });
}
