import 'package:banx/composition/forgot_password_page_factory.dart';
import 'package:banx/composition/sign_up_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:phone/presentation/view/phone_page.dart';

class PhonePageFactory {
  static const path = "/phone";

  static PhonePage builder(BuildContext context, GoRouterState state) {
    return PhonePage(
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
        path: (PhonePageFactory.path),
        builder: PhonePageFactory.builder,
        routes: routes);
  }
}
