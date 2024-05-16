import 'package:banx/composition/forgot_password_page_factory.dart';
import 'package:banx/composition/login_page_factory.dart';
import 'package:banx/composition/onboarding_page_factory.dart';
import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/composition/reset_password_page_factory.dart';
import 'package:banx/composition/root_page_factory.dart';
import 'package:banx/composition/sign_up_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:go_router/go_router.dart';
import 'package:utils/configurations/hermes_config.dart';

/// The route configuration.
Future<GoRouter> get routerConfig async => GoRouter(
      initialLocation: await initialLocation,
      routes: <RouteBase>[
        OnboardingPageFactory.route(),
        RootPageFactory.route(),
        PhonePageFactory.route(),
        VerifyOtpPageFactory.route(),
        SignUpPageFactory.route(),
        LoginPageFactory.route(),
        ForgotPasswordPageFactory.route(),
        ResetPasswordPageFactory.route()
      ],
    );

Future<String> get initialLocation async {
  await BanxConfig.initialize();
  /*if (BanxConfig.app.isIntroPageViewed()) {
    return RootPageFactory.path;
  } else {
    await BanxConfig.app.introPageViewed();
    return OnboardingPageFactory.path;
  }*/
  return VerifyOtpPageFactory.path;
}
