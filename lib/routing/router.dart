import 'package:banx/composition/identity_page_factory.dart';
import 'package:banx/composition/onboarding_password_page_factory.dart';
import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/composition/root_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_password/presentation/view/onboarding_password_page.dart';
import 'package:utils/configurations/hermes_config.dart';

/// The route configuration.
Future<GoRouter> get routerConfig async => GoRouter(
      initialLocation: await initialLocation,
      routes: <RouteBase>[
        RootPageFactory.route(),
        PhonePageFactory.route(),
        OnboardingPasswordPageFactory.route(),
        IdentityPageFactory.route(),
        VerifyOtpPageFactory.route(),
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
  return PhonePageFactory.path;
}