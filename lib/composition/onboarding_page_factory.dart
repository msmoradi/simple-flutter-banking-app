import 'package:banx/composition/login_page_factory.dart';
import 'package:banx/composition/root_page_factory.dart';
import 'package:banx/composition/sign_up_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding/presentation/view/onboarding_page.dart';

class OnboardingPageFactory {
  static const path = "/";

  static OnboardingPage builder(BuildContext context, GoRouterState state) {
    return OnboardingPage(
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
        path: (OnboardingPageFactory.path),
        builder: OnboardingPageFactory.builder,
        routes: routes);
  }
}
