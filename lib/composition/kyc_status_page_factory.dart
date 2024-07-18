import 'package:banx/feature/kyc_status/presentation/view/kyc_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class KycStatusPageFactory {
  static const path = "/kyc_status";

  static KycStatusPage builder({
    required BuildContext context,
    required GoRouterState state,
    required KycStatusExtra? extra,
    required Function(String message) showMessage,
  }) {
    return KycStatusPage(
        showMessage:showMessage,
      onNext: () {},
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (KycStatusPageFactory.path),
        builder: (ctx, state) {
          final KycStatusExtra? extra = state.extra as KycStatusExtra?;
          return KycStatusPageFactory.builder(
              context: ctx,
              state: state,
              extra: extra,
              showMessage: showMessage);
        },
        routes: routes);
  }
}

class KycStatusExtra {
  KycStatusExtra();
}
