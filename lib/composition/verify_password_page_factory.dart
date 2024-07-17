import 'package:banx/composition/main_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:verify_password/presentation/view/verify_password_page.dart';

class VerifyPasswordPageFactory {
  static const path = "/verifyPassword";

  static VerifyPasswordPage builder(
    BuildContext context,
    GoRouterState state,
    VerifyPasswordExtra extra,
  ) {
    return VerifyPasswordPage(
      phoneNumber: extra.phoneNumber,
      refreshToken: extra.refreshToken,
      onMainPage: () {
        context.push(MainPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (VerifyPasswordPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as VerifyPasswordExtra;
          return VerifyPasswordPageFactory.builder(ctx, state, extra);
        },
        routes: routes);
  }
}

class VerifyPasswordExtra {
  final String phoneNumber;
  final String refreshToken;

  VerifyPasswordExtra({
    required this.phoneNumber,
    required this.refreshToken,
  });
}
