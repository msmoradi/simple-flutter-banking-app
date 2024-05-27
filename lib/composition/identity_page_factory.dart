import 'package:banx/composition/onboarding_password_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:identity/presentation/view/identity_page.dart';

class IdentityPageFactory {
  static const path = "/identity";

  static IdentityPage builder(BuildContext context, GoRouterState state) {
    return IdentityPage(
      onNext: () {
        context.push(
          OnboardingPasswordPageFactory.path,
          extra: OnboardingPasswordExtra(
            phoneNumber: "09128702779",
            sessionId: "sessionId",
            numCells: 4,
          ),
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (IdentityPageFactory.path),
        builder: IdentityPageFactory.builder,
        routes: routes);
  }
}
