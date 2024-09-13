import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/feature/face_detection/presentation/view/face_detection_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class FaceDetectionPageFactory {
  static const path = "/face_detection";

  static FaceDetectionPage builder(
    BuildContext context,
    Function(String message) showMessage,
    Function(String deeplink) onDeeplinkLanding,
  ) {
    return FaceDetectionPage(
      showMessage: showMessage,
      onDeeplinkLanding: onDeeplinkLanding,
      onKycStatus: () {
        context.push(KycStatusPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
    required Function(String deeplink) onDeeplinkLanding,
  }) {
    return GoRoute(
      path: (FaceDetectionPageFactory.path),
      builder: (context, state) {
        return FaceDetectionPageFactory.builder(
          context,
          showMessage,
          onDeeplinkLanding,
        );
      },
      routes: routes,
    );
  }
}
