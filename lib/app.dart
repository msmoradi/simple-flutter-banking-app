import 'package:banx/core/designsystem/theme/theme.dart';
import 'package:banx/core/utils/l10n/app_localizations.dart';
import 'package:banx/error_action_listener.dart';
import 'package:banx/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class App extends StatelessWidget {
  final bool verifyPassword;

  const App({super.key, required this.verifyPassword});

  @override
  Widget build(BuildContext context) {
    final _router = getRouterConfig(
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
      verifyPassword: verifyPassword,
    );

    precacheImages(context);
    return ToastificationWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        theme: BanxTheme.light(),
        darkTheme: BanxTheme.dark(),
        locale: const Locale('fa'),
        localizationsDelegates: Translator.localizationsDelegates,
        supportedLocales: Translator.supportedLocales,
        builder: (context, child) {
          // Wrap with a listener widget to handle ErrorActions
          return ErrorActionListener(
            navigate: (path) {
              _router.go(path);
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
            child: child!,
          );
        },
      ),
    );
  }

  void precacheImages(BuildContext context) {
    precacheImage(const AssetImage("assets/images/asset_shape.png"), context);
    precacheImage(
        const AssetImage("assets/images/onboarding_face.png"), context);
    precacheImage(
        const AssetImage("assets/images/referral_frame.png"), context);
  }
}
