import 'dart:async';

import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/utils/extension/strings.dart';

class BanxConfig {
  final TokenRepository tokenRepository;

  BanxConfig({required this.tokenRepository});

  Future<bool> refreshTokenExist() async {
    final refreshToken = await tokenRepository.getRefreshToken();
    return !refreshToken.isNullOrEmpty;
  }
}
