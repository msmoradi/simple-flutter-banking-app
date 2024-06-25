import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:verify_otp/presentation/view/verify_otp_page.dart';

class VerifyOtpPageFactory {
  static const path = "/verifyOtp";

  static VerifyOtpPage builder(
    BuildContext context,
    GoRouterState state,
    VerifyOtpExtra? extra,
  ) {
    return VerifyOtpPage(
      phoneNumber: extra?.phoneNumber ?? "09121452078",
      codeLength: extra?.codeLength ?? 6,
      expiresIn: extra?.expiresIn ?? 10,
      onNext: () {},
      onBackPressed: () {
        context.pop();
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (VerifyOtpPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as VerifyOtpExtra?;
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
