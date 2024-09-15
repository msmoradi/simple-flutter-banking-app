import 'package:banx/app.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final tokenRepository = getIt<TokenRepository>();
  final profileRepository = getIt<ProfileRepository>();

  final UserProfileEntity? profile = await profileRepository.getLocalProfile();
  final String? refreshToken = await tokenRepository.getRefreshToken();
  final bool hasPassword = profile?.hasPassword ?? false;
  final bool hasRefresh = refreshToken?.isNotEmpty ?? false;
  final bool verifyPassword = hasPassword && hasRefresh;

  runApp(App(verifyPassword: verifyPassword));
}

void restartApp() async {
  final tokenRepository = getIt<TokenRepository>();
  await tokenRepository.clearTokens();

  runApp(const App(verifyPassword: false));
}
