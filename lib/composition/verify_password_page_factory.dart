import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/onboarding_face_page_factory.dart';
import 'package:banx/composition/select_card_page_factory.dart';
import 'package:banx/feature/verify_password/presentation/view/verify_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class VerifyPasswordPageFactory {
  static const path = "/verifyPassword";

  static VerifyPasswordPage builder(
    BuildContext context,
    GoRouterState state,
  ) {
    return VerifyPasswordPage(
      homeLanding: () {
        context.push(MainPageFactory.path);
      },
      waitingLanding: () {
        context.push(KycStatusPageFactory.path);
      },
      faceDetectionLanding: () {
        context.push(OnboardingFacePageFactory.path);
      },
      cardOrderingLanding: () {
        context.push(SelectCardPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (VerifyPasswordPageFactory.path),
        builder: (ctx, state) {
          return VerifyPasswordPageFactory.builder(ctx, state);
        },
        routes: routes);
  }
}
