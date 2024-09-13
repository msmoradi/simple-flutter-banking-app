import 'package:banx/feature/kyc_status/presentation/view/kyc_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class KycStatusPageFactory {
  static const path = "/kyc_status";

  static KycStatusPage builder({
    required BuildContext context,
    required Function(String message) showMessage,
    required Function(String deeplink) onDeeplinkLanding,
  }) {
    return KycStatusPage(
      onDeeplinkLanding: onDeeplinkLanding,
      showMessage: showMessage,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
    required Function(String deeplink) onDeeplinkLanding,
  }) {
    return GoRoute(
        path: (KycStatusPageFactory.path),
        builder: (ctx, state) {
          return KycStatusPageFactory.builder(
            context: ctx,
            showMessage: showMessage,
            onDeeplinkLanding: onDeeplinkLanding,
          );
        },
        routes: routes);
  }
}
