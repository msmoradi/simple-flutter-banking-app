import 'package:banx/routing/router.dart';
import 'package:designsystem/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/enable_face.png"), context);
    precacheImage(const AssetImage("assets/images/image-key.png"), context);
    precacheImage(const AssetImage("assets/images/onboarding_face.png"), context);
    precacheImage(const AssetImage("assets/images/referral_frame.png"), context);
    precacheImage(const AssetImage("assets/images/metal_card_silver.png"), context);
    precacheImage(const AssetImage("assets/images/metal_card_black.png"), context);
    precacheImage(const AssetImage("assets/images/metal_card_gold.png"), context);
    precacheImage(const AssetImage("assets/images/gold.png"), context);
    precacheImage(const AssetImage("assets/images/black.png"), context);
    precacheImage(const AssetImage("assets/images/silver.png"), context);
    return FutureBuilder<GoRouter>(
      future: routerConfig,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: const Locale('fa'),
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
              debugShowCheckedModeBanner: false,
              routerConfig: snapshot.data,
              theme: BanxTheme.light(),
              darkTheme: BanxTheme.dark(),
              locale: const Locale('fa'),
              localizationsDelegates: Translator.localizationsDelegates,
              supportedLocales: Translator.supportedLocales);
        }
      },
    );
  }
}
