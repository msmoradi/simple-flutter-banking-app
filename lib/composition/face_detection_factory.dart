import 'package:banx/composition/select_card_page_factory.dart';
import 'package:face_detection/presentation/view/face_detection_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class FaceDetectionPageFactory {
  static const path = "/face_detection";

  static FaceDetectionPage builder(
    BuildContext context,
    GoRouterState state,
    FaceDetectionExtra extra,
  ) {
    return FaceDetectionPage(
      onNext: () {
        context.push(
          SelectCardPageFactory.path,
          extra: SelectCardExtra(sessionId: extra.sessionId),
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (FaceDetectionPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as FaceDetectionExtra;
          return FaceDetectionPageFactory.builder(ctx, state, extra);
        },
        routes: routes);
  }
}

class FaceDetectionExtra {
  final String sessionId;

  FaceDetectionExtra({required this.sessionId});
}
