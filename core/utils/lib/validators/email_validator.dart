import 'package:domain/entities/email.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/extension/email.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class EmailValidator extends FieldValidator {
  final String? _email;

  EmailValidator(this._email);

  @override
  ValidationResult validate() {
    final emptinessResult = EmptinessValidator([_email]).validate();
    if (!emptinessResult.isValid) {
      return emptinessResult;
    }
    if (!Email(value: _email!).isValid()) {
      return ValidationResult.invalid(EmailStructuralError());
    }

    return ValidationResult.valid();
  }
}

class EmailStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return context.getTranslator().emailValidationText;
  }
}
