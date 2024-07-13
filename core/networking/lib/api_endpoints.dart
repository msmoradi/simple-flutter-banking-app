// ignore_for_file: constant_identifier_names
import 'package:flutter/foundation.dart';

@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  static const baseUrl = 'http://192.168.205.175:8083';

  static String auth(AuthEndpoint endpoint) {
    const path = '/api/v1/auth/';
    switch (endpoint) {
      case AuthEndpoint.SEND_OTP:
        return '$path/otp/send';
      case AuthEndpoint.VERIFY_OTP:
        return '$path/otp/verify';
      case AuthEndpoint.PASSWORD:
        return '$path/password';
      case AuthEndpoint.REFRESH:
        return '$path/refresh';
      case AuthEndpoint.SIGN_UP:
        return '$path/otp/signup';
    }
  }

  static String profile(ProfileEndpoint endpoint) {
    const path = '/api/v1/';
    switch (endpoint) {
      case ProfileEndpoint.GET_PROFILE:
        return '$path/profile';
      case ProfileEndpoint.POSTAL_CODE:
        return '$path/postalCode';
    }
  }
}

enum AuthEndpoint {
  SEND_OTP,
  VERIFY_OTP,
  PASSWORD,
  REFRESH,
  SIGN_UP,
}

enum ProfileEndpoint { GET_PROFILE, POSTAL_CODE }
