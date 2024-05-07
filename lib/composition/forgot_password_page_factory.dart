import 'package:flutter/cupertino.dart';
import 'package:forgot_password/presentation/view/forgot_password_page.dart';
import 'package:go_router/go_router.dart';
import 'package:banx/composition/reset_password_page_factory.dart';

class ForgotPasswordPageFactory {
  static const path = "/forgotPassword";

  static ForgotPasswordPage builder(BuildContext context, GoRouterState state) {
    return ForgotPasswordPage(
      onForgotPasswordSucceed: () {
        context.push(ResetPasswordPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (ForgotPasswordPageFactory.path),
        builder: ForgotPasswordPageFactory.builder,
        routes: routes);
  }
}
