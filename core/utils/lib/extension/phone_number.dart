import 'package:domain/entities/phone_number.dart';

extension PhoneNumberExtension on PhoneNumber {
  bool isValid() {
    return RegExp(r'^(?:0|\+98|0098)?9\d{9}$|^(?:0|\+98|0098)21\d{8}$')
        .hasMatch(value);
  }
}
