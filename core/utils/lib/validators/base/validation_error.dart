import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';

abstract class ValidationError {
  String getMessage(BuildContext context);
}

class EmptinessError extends ValidationError {
  @override
  String getMessage(BuildContext context) {
    return context.getTranslator().emptyValidationText;
  }
}
