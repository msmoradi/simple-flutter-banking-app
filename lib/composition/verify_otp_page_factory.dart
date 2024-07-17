import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/onboarding_password_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:verify_otp/presentation/view/verify_otp_page.dart';

class VerifyOtpPageFactory {
  static const path = "/verifyOtp";

  static VerifyOtpPage builder(
    BuildContext context,
    GoRouterState state,
    VerifyOtpExtra extra,
  ) {
    return VerifyOtpPage(
      phoneNumber: extra.phoneNumber,
      codeLength: extra.codeLength,
      expiresIn: extra.expiresIn,
      onMainPage: () {
        context.push(MainPageFactory.path);
      },
      setPassword: () {
        context.push(
          OnboardingPasswordPageFactory.path,
          extra: OnboardingPasswordExtra(
            phoneNumber: extra.phoneNumber,
          ),
        );
      },
      verifyPassword: (refreshToken) {
        context.push(
          VerifyPasswordPageFactory.path,
          extra: VerifyPasswordExtra(
            phoneNumber: extra.phoneNumber,
            refreshToken: refreshToken,
          ),
        );
      },
      onBackPressed: context.pop,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (VerifyOtpPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as VerifyOtpExtra;
          return VerifyOtpPageFactory.builder(ctx, state, extra);
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
