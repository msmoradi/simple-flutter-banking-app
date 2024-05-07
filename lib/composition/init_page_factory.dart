import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:banx/composition/login_page_factory.dart';
import 'package:banx/composition/root_page_factory.dart';
import 'package:banx/composition/sign_up_page_factory.dart';
import 'package:initial/presentation/view/initial_page.dart';

class InitPageFactory {
  static const path = "/";

  static InitialPage builder(BuildContext context, GoRouterState state) {
    return InitialPage(
      onLoginTapped: () {
        context.pushReplacement(LoginPageFactory.path);
      },
      onSignUpTapped: () {
        context.pushReplacement(SignUpPageFactory.path);
      },
      onSkipLoginTapped: () {
        context.pushReplacement(RootPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (InitPageFactory.path),
        builder: InitPageFactory.builder,
        routes: routes);
  }
}
