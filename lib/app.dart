import 'package:designsystem/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:banx/routing/router.dart';
import 'package:utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GoRouter>(
      future: routerConfig,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return MaterialApp(
            theme: BanxThemeData.lightThemeData,
            darkTheme: BanxThemeData.darkThemeData,
            home: const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          return MaterialApp.router(
              routerConfig: snapshot.data,
              theme: BanxThemeData.lightThemeData,
              darkTheme: BanxThemeData.darkThemeData,
              localizationsDelegates: Translator.localizationsDelegates,
              supportedLocales: Translator.supportedLocales);
        }
      },
    );
  }
}
