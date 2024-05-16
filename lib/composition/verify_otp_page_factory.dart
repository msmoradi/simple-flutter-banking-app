import 'package:banx/composition/forgot_password_page_factory.dart';
import 'package:banx/composition/sign_up_page_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:verify_otp/presentation/view/verify_otp_page.dart';

class VerifyOtpPageFactory {
  static const path = "/verifyOtp";

  static VerifyOtpPage builder(BuildContext context, GoRouterState state) {
    return VerifyOtpPage(
      onSignUpTapped: () {
        context.push(SignUpPageFactory.path);
      },
      onForgotPasswordTapped: () {
        context.push(ForgotPasswordPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (VerifyOtpPageFactory.path),
        builder: VerifyOtpPageFactory.builder,
        routes: routes);
  }
}
