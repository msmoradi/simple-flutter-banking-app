import 'package:domain/entities/phone_number.dart';

extension PhoneNumberExtension on PhoneNumber {
  bool isValid() {
    return RegExp(r'^(?:0|\+98|0098)?9\d{9}$|^(?:0|\+98|0098)21\d{8}$')
        .hasMatch(value);
  }

  String convertToObscure() {
    if (!value.contains('@')) {
      return value;
    }
    const obscureCharacters = "***";
    final email = value;
    final indexOfAtSign = email.indexOf('@');
    final numberOfShowingCharacter = email[1] == "." ? 3 : 2;
    final hiddenPhoneNumberPrefix = email.replaceRange(
        numberOfShowingCharacter, indexOfAtSign, obscureCharacters);
    final indexOfAtSignAfterHidePrefix = hiddenPhoneNumberPrefix.indexOf('@');
    final dot = hiddenPhoneNumberPrefix.lastIndexOf(".");
    final obscuredPhoneNumber = hiddenPhoneNumberPrefix.replaceRange(
        indexOfAtSignAfterHidePrefix + 1, dot, obscureCharacters);
    return obscuredPhoneNumber;
  }

  String hide() {
    if (!isValid()) {
      return value;
    }
    return value.replaceRange(2, value.indexOf('@') - 1, "***");
  }
}
