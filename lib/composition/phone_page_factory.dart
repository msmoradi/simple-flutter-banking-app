import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:phone/presentation/view/phone_page.dart';

class PhonePageFactory {
  static const path = "/phone";

  static PhonePage builder(BuildContext context, GoRouterState state) {
    return PhonePage(
      onVerifyOtp: (phoneNumber, sessionId, numCells) {
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
        path: (PhonePageFactory.path),
        builder: PhonePageFactory.builder,
        routes: routes);
  }
}
