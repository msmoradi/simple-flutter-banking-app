import 'package:banx/core/designsystem/theme/theme.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:banx/core/utils/l10n/app_localizations.dart';
import 'package:banx/di.dart';
import 'package:banx/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImages(context);
    return ToastificationWrapper(
      child: FutureBuilder<GoRouter>(
        future: _initializeRouter(onDeeplinkLanding: (deeplink) {
          GoRouter.of(context).go(deeplink);
        }, showMessage: (message) {
          toastification.show(
            type: ToastificationType.error,
            style: ToastificationStyle.fillColored,
            alignment: Alignment.bottomCenter,
            showProgressBar: false,
            closeOnClick: true,
            dragToClose: true,
            title: Text(message),
            autoCloseDuration: const Duration(seconds: 3),
          );
        }),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: const Locale('fa'),
              theme: BanxTheme.light(),
              darkTheme: BanxTheme.dark(),
            );
          } else {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: snapshot.data!,
              theme: BanxTheme.light(),
              darkTheme: BanxTheme.dark(),
              locale: const Locale('fa'),
              localizationsDelegates: Translator.localizationsDelegates,
              supportedLocales: Translator.supportedLocales,
            );
          }
        },
      ),
    );
  }

  Future<GoRouter> _initializeRouter({
    required Function(String) showMessage,
    required Function(String) onDeeplinkLanding,
  }) async {
    final banxConfig = getIt<BanxConfig>();
    return await getRouterConfig(
      banxConfig: banxConfig,
      showMessage: showMessage,
      onDeeplinkLanding: onDeeplinkLanding,
    );
  }

  void precacheImages(BuildContext context) {
    precacheImage(const AssetImage("assets/images/asset_shape.png"), context);
    precacheImage(const AssetImage("assets/images/enable_face.png"), context);
    precacheImage(const AssetImage("assets/images/image-key.png"), context);
    precacheImage(
        const AssetImage("assets/images/onboarding_face.png"), context);
    precacheImage(
        const AssetImage("assets/images/referral_frame.png"), context);
    precacheImage(
        const AssetImage("assets/images/metal_card_silver.png"), context);
    precacheImage(
        const AssetImage("assets/images/metal_card_black.png"), context);
    precacheImage(
        const AssetImage("assets/images/metal_card_gold.png"), context);
    precacheImage(const AssetImage("assets/images/gold.png"), context);
    precacheImage(const AssetImage("assets/images/black.png"), context);
    precacheImage(const AssetImage("assets/images/silver.png"), context);
  }
}
