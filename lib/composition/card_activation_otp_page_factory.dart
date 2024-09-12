import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:banx/feature/card_activation_otp/presentation/view/card_activation_otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardActivationOtpPageFactory {
  static const path = "/cardActivationOtp";

  static CardActivationOtpPage builder(
    BuildContext context,
    GoRouterState state,
    CardActivationOtpExtra extra,
    Function(String message) showMessage,
  ) {
    return CardActivationOtpPage(
      showMessage: showMessage,
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
  }) {
    return GoRoute(
        path: (CardActivationOtpPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as CardActivationOtpExtra;
          return CardActivationOtpPageFactory.builder(
            ctx,
            state,
            extra,
            showMessage,
          );
        },
        routes: routes);
  }
}

class CardActivationOtpExtra {
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;

  CardActivationOtpExtra({
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
  });
}
