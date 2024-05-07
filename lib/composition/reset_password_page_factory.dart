import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reset_password/presentation/view/reset_pass_page.dart';

class ResetPasswordPageFactory {
  static const path = "/resetPassword";

  static ResetPasswordPage builder(BuildContext context, GoRouterState state) {
    return const ResetPasswordPage();
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (ResetPasswordPageFactory.path),
        builder: ResetPasswordPageFactory.builder,
        routes: routes);
  }
}
