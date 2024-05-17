import 'package:domain/entities/national_id.dart';
import 'package:domain/entities/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/extension/national_id.dart';
import 'package:utils/extension/phone_number.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class NationalIdValidator extends FieldValidator {
  final String? _nationalId;

  NationalIdValidator(this._nationalId);

  @override
  ValidationResult validate() {
    final emptinessResult = EmptinessValidator([_nationalId]).validate();
    if (!emptinessResult.isValid) {
      return emptinessResult;
    }
    if (!NationalId(value: _nationalId!).isValid()) {
      return ValidationResult.invalid(NationalIdStructuralError());
    }

    return ValidationResult.valid();
  }
}

class NationalIdStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return context.getTranslator().emailValidationText;
  }
}
