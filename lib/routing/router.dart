import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/composition/card_activation_otp_page_factory.dart';
import 'package:banx/composition/card_activation_page_factory.dart';
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
import 'package:banx/composition/select_card_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:go_router/go_router.dart';

GoRouter getRouterConfig({
  required bool verifyPassword,
  required Function(String) showMessage,
}) {
  final initialLocation =
      getInitialLocation(verifyPassword: verifyPassword);
  return GoRouter(
    initialLocation: initialLocation,
    routes: <RouteBase>[
      PhonePageFactory.route(showMessage: showMessage),
      AddAddressPageFactory.route(showMessage: showMessage),
      KycStatusPageFactory.route(showMessage: showMessage),
      FaceDetectionPageFactory.route(showMessage: showMessage),
      OnboardingPasswordPageFactory.route(showMessage: showMessage),
      CreatePasswordPageFactory.route(showMessage: showMessage),
      CheckPostalCodePageFactory.route(showMessage: showMessage),
      CardActivationOtpPageFactory.route(showMessage: showMessage),
      CardActivationPageFactory.route(showMessage: showMessage),
      SelectAddressPageFactory.route(showMessage: showMessage),
      NationalSerialPageFactory.route(showMessage: showMessage),
      CardDeliveryTimePageFactory.route(showMessage: showMessage),
      ConfirmPasswordPageFactory.route(showMessage: showMessage),
      MainPageFactory.route(showMessage: showMessage),
      SelectCardPageFactory.route(showMessage: showMessage),
      EnableBiometricPageFactory.route(showMessage: showMessage),
      OnboardingFacePageFactory.route(showMessage: showMessage),
      IdentityPageFactory.route(showMessage: showMessage),
      VerifyOtpPageFactory.route(showMessage: showMessage),
      VerifyPasswordPageFactory.route(showMessage: showMessage),
    ],
  );
}

String getInitialLocation({
  required bool verifyPassword,
}) {
  if (verifyPassword) {
    return VerifyPasswordPageFactory.path;
  } else {
    return PhonePageFactory.path;
  }
}
