import 'package:banx/core/designsystem/theme/theme.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:banx/core/utils/l10n/app_localizations.dart';
import 'package:banx/di.dart';
import 'package:banx/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class App extends StatelessWidget {
  final bool refreshTokenExist;

  const App({super.key, required this.refreshTokenExist});

  @override
  Widget build(BuildContext context) {
    precacheImages(context);
    return ToastificationWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: getRouterConfig(
          onDeeplinkLanding: (deeplink) {
            GoRouter.of(context).go(deeplink);
          },
          showMessage: (message) {
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
          },
          refreshTokenExist: refreshTokenExist,
        ),
        theme: BanxTheme.light(),
        darkTheme: BanxTheme.dark(),
        locale: const Locale('fa'),
        localizationsDelegates: Translator.localizationsDelegates,
        supportedLocales: Translator.supportedLocales,
      ),
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
