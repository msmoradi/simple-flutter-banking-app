import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:phone/presentation/view/phone_page.dart';

class PhonePageFactory {
  static const path = "/phone";

  static PhonePage builder(BuildContext context, GoRouterState state) {
    return PhonePage(
      onVerifyOtp: (value) {
        context.push(VerifyOtpPageFactory.path);
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
