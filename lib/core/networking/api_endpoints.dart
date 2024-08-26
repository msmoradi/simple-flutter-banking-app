// ignore_for_file: constant_identifier_names
import 'package:flutter/foundation.dart';

@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  static const baseUrl = 'http://5.34.202.38:8585';

  static String auth(AuthEndpoint endpoint) {
    const path = '/api/v1/app/auth/';
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
    const path = '/api/v1/app/';
    switch (endpoint) {
      case ProfileEndpoint.GET_PROFILE:
        return '$path/profile';
      case ProfileEndpoint.POSTAL_CODE:
        return '$path/postalCode';
    }
  }

  static String card(CardEndpoint endpoint) {
    const path = '/api/v1/app/card';
    switch (endpoint) {
      case CardEndpoint.ORDERS:
        return '$path/orders';
      case CardEndpoint.TYPES:
        return '$path/types';
      case CardEndpoint.SHIPPING_TIME_SLOTS:
        return '$path/shipping-time-slots';
    }
  }

  static String media(MediaEndpoint endpoint) {
    const path = '/api/v1/app/';
    switch (endpoint) {
      case MediaEndpoint.UPLOAD_VIDEO:
        return '$path/upload_video';
      case MediaEndpoint.UPLOAD_IMAGE:
        return '$path/upload_image';
    }
  }

  static String address(AddressEndpoint endpoint) {
    const path = '/api/v1/app/address';
    switch (endpoint) {
      case AddressEndpoint.ADDRESS:
        return path;
      case AddressEndpoint.STATES:
        return '$path/states';
      case AddressEndpoint.INQUIRY:
        return '$path/inquery';
      case AddressEndpoint.CITIES:
        return '$path/cities';
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

enum CardEndpoint { ORDERS, TYPES, SHIPPING_TIME_SLOTS }

enum MediaEndpoint { UPLOAD_VIDEO, UPLOAD_IMAGE }

enum AddressEndpoint { ADDRESS, STATES, INQUIRY, CITIES }
