import 'package:banx/routing/router.dart';
import 'package:designsystem/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            theme: BanxTheme.light(),
            darkTheme: BanxTheme.dark(),
            home: const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          return MaterialApp.router(
              routerConfig: snapshot.data,
              theme: BanxTheme.light(),
              darkTheme: BanxTheme.dark(),
              localizationsDelegates: Translator.localizationsDelegates,
              supportedLocales: Translator.supportedLocales);
        }
      },
    );
  }
}
