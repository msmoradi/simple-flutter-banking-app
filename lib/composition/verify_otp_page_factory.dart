import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:banx/feature/verify_otp/presentation/view/verify_otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class VerifyOtpPageFactory {
  static const path = "/verifyOtp";

  static VerifyOtpPage builder(
    BuildContext context,
    GoRouterState state,
    VerifyOtpExtra extra,
    Function(String message) showMessage,
    Function(String deeplink) onDeeplinkLanding,
  ) {
    return VerifyOtpPage(
      showMessage: showMessage,
      onDeeplinkLanding: onDeeplinkLanding,
      phoneNumber: extra.phoneNumber,
      codeLength: extra.codeLength,
      expiresIn: extra.expiresIn,
      onMainPage: () {
        context.push(MainPageFactory.path);
      },
      verifyPassword: (refreshToken) {
        context.push(
          VerifyPasswordPageFactory.path,
        );
      },
      onBackPressed: context.pop,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
    required Function(String deeplink) onDeeplinkLanding,
  }) {
    return GoRoute(
        path: (VerifyOtpPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as VerifyOtpExtra;
          return VerifyOtpPageFactory.builder(
            ctx,
            state,
            extra,
            showMessage,
            onDeeplinkLanding,
          );
        },
        routes: routes);
  }
}

class VerifyOtpExtra {
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;

  VerifyOtpExtra({
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
  });
}
