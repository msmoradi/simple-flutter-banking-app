import 'package:banx/composition/create_password_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_password/presentation/view/onboarding_password_page.dart';

class OnboardingPasswordPageFactory {
  static const path = "/onboarding_password";

  static OnboardingPasswordPage builder({
    required BuildContext context,
    required GoRouterState state,
    required OnboardingPasswordExtra extra,
  }) {
    return OnboardingPasswordPage(
      onNext: () {
        context.push(
          CreatePasswordPageFactory.path,
          extra: CreatePasswordExtra(
            phoneNumber: extra.phoneNumber,
          ),
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (OnboardingPasswordPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as OnboardingPasswordExtra;
          return OnboardingPasswordPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class OnboardingPasswordExtra {
  final String phoneNumber;

  OnboardingPasswordExtra({
    required this.phoneNumber,
  });
}
