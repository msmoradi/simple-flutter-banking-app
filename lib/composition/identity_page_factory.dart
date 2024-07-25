import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/feature/identity/presentation/view/identity_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class IdentityPageFactory {
  static const path = "/identity";

  static IdentityPage builder({
    required BuildContext context,
    required GoRouterState state,
    required IdentityExtra extra,
    required Function(String) showMessage,
  }) {
    return IdentityPage(
      phoneNumber: extra.phoneNumber,
      showMessage: showMessage,
      needReferralCode: extra.needReferralCode,
      onVerifyOtp: (expiresIn, codeLength) {
        context.push(VerifyOtpPageFactory.path,
            extra: VerifyOtpExtra(
              phoneNumber: extra.phoneNumber,
              expiresIn: expiresIn,
              codeLength: codeLength,
            ));
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String) showMessage,
  }) {
    return GoRoute(
        path: (IdentityPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra != null
              ? state.extra as IdentityExtra
              : IdentityExtra(phoneNumber: "", needReferralCode: false);
          return IdentityPageFactory.builder(
            showMessage: showMessage,
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class IdentityExtra {
  final String phoneNumber;
  final bool needReferralCode;

  IdentityExtra({
    required this.phoneNumber,
    required this.needReferralCode,
  });
}
