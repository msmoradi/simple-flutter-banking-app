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
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:go_router/go_router.dart';

Future<GoRouter> getRouterConfig(BanxConfig banxConfig) async {
  final initialLocation = await getInitialLocation(banxConfig);
  return GoRouter(
    initialLocation: initialLocation,
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
      VerifyPasswordPageFactory.route(),
    ],
  );
}

Future<String> getInitialLocation(BanxConfig banxConfig) async {
  final isRefreshTokenExist = await banxConfig.refreshTokenExist();
  if (isRefreshTokenExist) {
    return VerifyPasswordPageFactory.path;
  } else {
    return PhonePageFactory.path;
  }
}
