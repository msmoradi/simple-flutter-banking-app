import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:kyc_status/presentation/view/kyc_status_page.dart';

class KycStatusPageFactory {
  static const path = "/kyc_status";

  static KycStatusPage builder({
    required BuildContext context,
    required GoRouterState state,
    required KycStatusExtra? extra,
  }) {
    return KycStatusPage(
      onNext: () {},
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (KycStatusPageFactory.path),
        builder: (ctx, state) {
          final KycStatusExtra? extra = state.extra as KycStatusExtra?;
          return KycStatusPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class KycStatusExtra {
  final String phoneNumber;
  final String sessionId;

  KycStatusExtra({
    required this.phoneNumber,
    required this.sessionId,
  });
}
