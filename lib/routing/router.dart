import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/composition/check_postal_code_page_factory.dart';
import 'package:banx/composition/select_address_page_factory.dart';
import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/composition/confirm_password_page_factory.dart';
import 'package:banx/composition/create_password_page_factory.dart';
import 'package:banx/composition/enable_biometric_page_factory.dart';
import 'package:banx/composition/face_detection_factory.dart';
import 'package:banx/composition/identity_page_factory.dart';
import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/national_serial_page_factory.dart';
import 'package:banx/composition/onboarding_face_page_factory.dart';
import 'package:banx/composition/onboarding_password_page_factory.dart';
import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/composition/root_page_factory.dart';
import 'package:banx/composition/select_card_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:go_router/go_router.dart';

Future<GoRouter> getRouterConfig({
  required BanxConfig banxConfig,
  required Function(String) showMessage,
  required Function(String deeplink) onDeeplinkLanding,
}) async {
  final initialLocation = await getInitialLocation(banxConfig);
  return GoRouter(
    initialLocation: initialLocation,
    routes: <RouteBase>[
      RootPageFactory.route(showMessage: showMessage),
      PhonePageFactory.route(showMessage: showMessage),
      AddAddressPageFactory.route(showMessage: showMessage),
      KycStatusPageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
      FaceDetectionPageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
      OnboardingPasswordPageFactory.route(showMessage: showMessage),
      CreatePasswordPageFactory.route(showMessage: showMessage),
      CheckPostalCodePageFactory.route(showMessage: showMessage),
      SelectAddressPageFactory.route(
        showMessage: showMessage,
      ),
      NationalSerialPageFactory.route(showMessage: showMessage),
      CardDeliveryTimePageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
      ConfirmPasswordPageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
      MainPageFactory.route(showMessage: showMessage),
      SelectCardPageFactory.route(showMessage: showMessage),
      EnableBiometricPageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
      OnboardingFacePageFactory.route(showMessage: showMessage),
      IdentityPageFactory.route(showMessage: showMessage),
      VerifyOtpPageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
      VerifyPasswordPageFactory.route(
        showMessage: showMessage,
        onDeeplinkLanding: onDeeplinkLanding,
      ),
    ],
  );
}

Future<String> getInitialLocation(BanxConfig banxConfig) async {
  final isRefreshTokenExist = await banxConfig.refreshTokenExist();
  if (isRefreshTokenExist) {
    return MainPageFactory.path;
  } else {
    return MainPageFactory.path;
  }
}
