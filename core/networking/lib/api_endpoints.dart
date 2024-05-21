// ignore_for_file: constant_identifier_names
import 'package:flutter/foundation.dart';

@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  //TODO: Create a config file and move baseUrl definition
  static const baseUrl = 'https://tour.banx-dev.xyz/api/';

  static String auth(AuthEndpoint endpoint) {
    const path = '/authentication';
    switch (endpoint) {
      case AuthEndpoint.REGISTER: return '$path/signup';
      case AuthEndpoint.LOGIN: return '$path/signin';
      case AuthEndpoint.RESET_PASSWORD: return '$path/ResetPassword';
      case AuthEndpoint.SEND_OTP: return '$path/sendOtp';
    }
  }

  static String tour(TourEndpoint endpoint, {int? id}) {
    const path = '/Tour';
    switch (endpoint) {
      case TourEndpoint.LIST: return '$path/List';
      case TourEndpoint.DETAIL: {
        assert(id != null, 'Id is required for tour detail');
        return '$path/Details?Id=$id';
      }
    }
  }
}

enum AuthEndpoint {
  /// An endpoint for registration requests.
  REGISTER,

  /// An endpoint for login requests.
  LOGIN,
  SEND_OTP,
  /// An endpoint for login requests.
  RESET_PASSWORD,
}

enum TourEndpoint {
  /// An endpoint for getting tours list
  LIST,

  /// An endpoint for getting tour detail
  DETAIL,
}