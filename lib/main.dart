import 'package:banx/app.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const App());
}

void restartApp() async {
  final tokenRepository = getIt<TokenRepository>();
  await tokenRepository.clearTokens();

  runApp(const App());
}
