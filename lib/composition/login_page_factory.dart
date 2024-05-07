import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:banx/composition/forgot_password_page_factory.dart';
import 'package:banx/composition/sign_up_page_factory.dart';
import 'package:login/presentation/view/login_page.dart';

class LoginPageFactory {
  static const path = "/login";

  static LoginPage builder(BuildContext context, GoRouterState state) {
    return LoginPage(
      onSignUpTapped: () {
        context.push(SignUpPageFactory.path);
      },
      onForgotPasswordTapped: () {
        context.push(ForgotPasswordPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (LoginPageFactory.path),
        builder: LoginPageFactory.builder,
        routes: routes);
  }
}
