import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/onboarding_face_page_factory.dart';
import 'package:banx/composition/select_card_page_factory.dart';
import 'package:banx/feature/confirm_password/presentation/view/confirm_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ConfirmPasswordPageFactory {
  static const path = "/confirm_password";

  static ConfirmPasswordPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required ConfirmPasswordExtra extra}) {
    return ConfirmPasswordPage(
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
      phoneNumber: extra.phoneNumber,
      newPassword: extra.newPassword,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (ConfirmPasswordPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as ConfirmPasswordExtra;
          return ConfirmPasswordPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class ConfirmPasswordExtra {
  final String phoneNumber;
  final String newPassword;

  ConfirmPasswordExtra({
    required this.phoneNumber,
    required this.newPassword,
  });
}
