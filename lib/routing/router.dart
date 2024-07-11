import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/composition/card_delivery_page_factory.dart';
import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/composition/confirm_password_page_factory.dart';
import 'package:banx/composition/create_password_page_factory.dart';
import 'package:banx/composition/enable_biometric_page_factory.dart';
import 'package:banx/composition/face_detection_factory.dart';
import 'package:banx/composition/identity_page_factory.dart';
import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/map_address_page_factory.dart';
import 'package:banx/composition/onboarding_face_page_factory.dart';
import 'package:banx/composition/onboarding_password_page_factory.dart';
import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/composition/root_page_factory.dart';
import 'package:banx/composition/select_card_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:go_router/go_router.dart';
import 'package:utils/configurations/hermes_config.dart';

/// The route configuration.
Future<GoRouter> get routerConfig async => GoRouter(
      initialLocation: await initialLocation,
      routes: <RouteBase>[
        RootPageFactory.route(),
        PhonePageFactory.route(),
        KycStatusPageFactory.route(),
        FaceDetectionPageFactory.route(),
        OnboardingPasswordPageFactory.route(),
        CreatePasswordPageFactory.route(),
        AddAddressPageFactory.route(),
        CardDeliveryPageFactory.route(),
        CardDeliveryTimePageFactory.route(),
        MapAddressPageFactory.route(),
        ConfirmPasswordPageFactory.route(),
        MainPageFactory.route(),
        SelectCardPageFactory.route(),
        EnableBiometricPageFactory.route(),
        OnboardingFacePageFactory.route(),
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
  return SelectCardPageFactory.path;
}
