import 'package:domain/repository/token_repository.dart';
import 'package:utils/extension/strings.dart';

import 'base_config.dart';

class AppConfig extends BaseConfig {
  AppConfig(TokenRepository? tokenRepository)
      : super(tokenRepository: tokenRepository);

  Future<bool> refreshTokenExist() async {
    final refreshToken = await tokenRepository?.getRefreshToken();
    return !refreshToken.isNullOrEmpty;
  }
}
