import 'package:banx/app.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final tokenRepository = getIt<TokenRepository>();

  final String? password = await tokenRepository.getPassword();
  final refreshTokenExist = password?.isNotEmpty ?? false;

  runApp(App(refreshTokenExist: refreshTokenExist));
}

void restartApp() async {
  final tokenRepository = getIt<TokenRepository>();
  await tokenRepository.clearTokens();

  runApp(const App(refreshTokenExist: false));
}
