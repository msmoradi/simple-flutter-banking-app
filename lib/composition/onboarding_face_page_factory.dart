import 'package:banx/composition/face_detection_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_face/presentation/view/onboarding_face_page.dart';

class OnboardingFacePageFactory {
  static const path = "/onboarding_face";

  static OnboardingFacePage builder(
    BuildContext context,
    GoRouterState state,
    OnboardingFaceExtra extra,
  ) {
    return OnboardingFacePage(
      onNext: () {
        context.push(
          FaceDetectionPageFactory.path,
          extra: FaceDetectionExtra(sessionId: extra.sessionId),
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
          final extra = state.extra as OnboardingFaceExtra;
          return OnboardingFacePageFactory.builder(ctx, state, extra);
        },
        routes: routes);
  }
}

class OnboardingFaceExtra {
  final String sessionId;

  OnboardingFaceExtra({required this.sessionId});
}
