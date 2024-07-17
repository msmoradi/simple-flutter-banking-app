import 'package:domain/repository/token_repository.dart';

abstract class BaseConfig {
  final TokenRepository? tokenRepository;

  BaseConfig({required this.tokenRepository});
}
