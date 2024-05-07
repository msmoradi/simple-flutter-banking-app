import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:signup/presentation/view/sign_up_page.dart';

import 'login_page_factory.dart';

class SignUpPageFactory {
  static const path = "/signUp";

  static SignUpPage builder(BuildContext context, GoRouterState state) {
    return SignUpPage(onLoginClicked: () {
      context.push(LoginPageFactory.path);
    });
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (SignUpPageFactory.path),
        builder: SignUpPageFactory.builder,
        routes: routes);
  }
}
