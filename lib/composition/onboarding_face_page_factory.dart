import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_face/presentation/view/onboarding_face_page.dart';
import 'package:onboarding_password/presentation/view/onboarding_password_page.dart';

class OnboardingFacePageFactory {
  static const path = "/onboarding_face";

  static OnboardingFacePage builder(
    BuildContext context,
    GoRouterState state,
  ) {
    return OnboardingFacePage(
      onBackPressed: () {
        context.pop();
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (OnboardingFacePageFactory.path),
        builder: (ctx, state) {
          // final extra = state.extra as OnboardingPasswordExtra;
          return OnboardingFacePageFactory.builder(ctx, state);
        },
        routes: routes);
  }
}

class OnboardingPasswordExtra {}
