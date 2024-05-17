import 'package:banx/composition/identity_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:verify_otp/presentation/view/verify_otp_page.dart';

class VerifyOtpPageFactory {
  static const path = "/verifyOtp";

  static VerifyOtpPage builder(BuildContext context, GoRouterState state,
      String phoneNumber, String sessionId, int numCells) {
    return VerifyOtpPage(
      phoneNumber: phoneNumber,
      sessionId: sessionId,
      numCells: numCells,
      onNext: () {
        context.push(IdentityPageFactory.path);
      },
      onBackPressed: () {
        context.pop();
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (VerifyOtpPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as VerifyOtpExtra;
          return VerifyOtpPageFactory.builder(
              ctx, state, extra.phoneNumber, extra.sessionId, extra.numCells);
        },
        routes: routes);
  }
}

class VerifyOtpExtra {
  final String phoneNumber;
  final String sessionId;
  final int numCells;

  VerifyOtpExtra({
    required this.phoneNumber,
    required this.sessionId,
    required this.numCells,
  });
}
