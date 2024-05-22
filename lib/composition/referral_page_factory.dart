import 'package:banx/composition/identity_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:referral/presentation/view/referral_page.dart';

class ReferralPageFactory {
  static const path = "/referral";

  static ReferralPage builder(BuildContext context, GoRouterState state) {
    return ReferralPage(
      onNext: () {
        context.push(IdentityPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (ReferralPageFactory.path),
        builder: ReferralPageFactory.builder,
        routes: routes);
  }
}
