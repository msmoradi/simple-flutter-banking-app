import 'package:banx/composition/create_password_page_factory.dart';
import 'package:banx/composition/onboarding_face_page_factory.dart';
import 'package:enable_biometric/presentation/view/enable_biometric_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_password/presentation/view/onboarding_password_page.dart';

class EnableBiometricPageFactory {
  static const path = "/enable_biometric";

  static EnableBiometricPage builder(
    BuildContext context,
    GoRouterState state,
  ) {
    return EnableBiometricPage(
      onNext: () {
        context.push(OnboardingFacePageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (EnableBiometricPageFactory.path),
        builder: (ctx, state) {
          // final extra = state.extra as EnableBiometricExtra;
          return EnableBiometricPageFactory.builder(ctx, state);
        },
        routes: routes);
  }
}

class EnableBiometricExtra {}
