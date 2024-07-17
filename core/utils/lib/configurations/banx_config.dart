import 'dart:async';

import 'package:data/repository/token_repository_impl.dart';
import 'package:domain/repository/token_repository.dart';
import 'package:utils/configurations/app_config.dart';

class BanxConfig {
  static TokenRepository? _tokenRepository;

  static Future<bool> initialize() async {
    _tokenRepository = TokenRepositoryImpl();
    return _tokenRepository != null;
  }

  static AppConfig get app => AppConfig(_tokenRepository);
}
