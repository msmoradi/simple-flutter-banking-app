import 'package:banx/composition/identity_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/feature/card_activation/presentation/view/card_activation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardActivationPageFactory {
  static const path = "/cardActivation";

  static CardActivationPage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return CardActivationPage(
      showMessage: showMessage,
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
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CardActivationPageFactory.path),
        builder: (ctx, state) {
          return CardActivationPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
