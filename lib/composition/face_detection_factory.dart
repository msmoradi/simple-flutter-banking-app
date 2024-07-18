import 'package:banx/composition/select_card_page_factory.dart';
import 'package:banx/feature/face_detection/presentation/view/face_detection_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class FaceDetectionPageFactory {
  static const path = "/face_detection";

  static FaceDetectionPage builder(
    BuildContext context,
    GoRouterState state,
    Function(String message) showMessage,
  ) {
    return FaceDetectionPage(
        showMessage:showMessage,
      onNext: () {
        context.push(
          SelectCardPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (FaceDetectionPageFactory.path),
        builder: (ctx, state) {
          return FaceDetectionPageFactory.builder(ctx, state, showMessage);
        },
        routes: routes);
  }
}
