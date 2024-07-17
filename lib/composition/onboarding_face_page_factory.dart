import 'package:banx/composition/face_detection_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_face/presentation/view/onboarding_face_page.dart';

class OnboardingFacePageFactory {
  static const path = "/onboarding_face";

  static OnboardingFacePage builder(
    BuildContext context,
    GoRouterState state,
  ) {
    return OnboardingFacePage(
      onNext: () {
        context.push(
          FaceDetectionPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (OnboardingFacePageFactory.path),
        builder: (ctx, state) {
          return OnboardingFacePageFactory.builder(ctx, state);
        },
        routes: routes);
  }
}
