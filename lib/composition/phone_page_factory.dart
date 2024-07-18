import 'package:banx/composition/identity_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/feature/phone/presentation/view/phone_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class PhonePageFactory {
  static const path = "/phone";

  static PhonePage builder(BuildContext context, GoRouterState state) {
    return PhonePage(
      onIdentity: (phoneNumber, needReferralCode) {
        context.push(IdentityPageFactory.path,
            extra: IdentityExtra(
              phoneNumber: phoneNumber,
              needReferralCode: needReferralCode,
            ));
      },
      onVerifyOtp: (phoneNumber, expiresIn, codeLength) {
        context.push(VerifyOtpPageFactory.path,
            extra: VerifyOtpExtra(
              phoneNumber: phoneNumber,
              expiresIn: expiresIn,
              codeLength: codeLength,
            ));
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
