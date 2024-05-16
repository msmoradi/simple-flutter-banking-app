import 'package:domain/entities/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/extension/phone_number.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class PhoneNumberValidator extends FieldValidator {
  final String? _phoneNumber;

  PhoneNumberValidator(this._phoneNumber);

  @override
  ValidationResult validate() {
    final emptinessResult = EmptinessValidator([_phoneNumber]).validate();
    if (!emptinessResult.isValid) {
      return emptinessResult;
    }
    if (!PhoneNumber(value: _phoneNumber!).isValid()) {
      return ValidationResult.invalid(PhoneNumberStructuralError());
    }

    return ValidationResult.valid();
  }
}

class PhoneNumberStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return context.getTranslator().emailValidationText;
  }
}
