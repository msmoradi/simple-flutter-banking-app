import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:identity/presentation/view/identity_page.dart';
import 'package:phone/presentation/view/phone_page.dart';

class IdentityPageFactory {
  static const path = "/identity";

  static IdentityPage builder(BuildContext context, GoRouterState state) {
    return IdentityPage(
      onVerifyOtp: (phoneNumber, sessionId,numCells) {
        context.push(VerifyOtpPageFactory.path,
            extra:
                VerifyOtpExtra(phoneNumber: phoneNumber, sessionId: sessionId,numCells: numCells));
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (IdentityPageFactory.path),
        builder: IdentityPageFactory.builder,
        routes: routes);
  }
}
