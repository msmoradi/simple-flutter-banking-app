import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/phone_number_validator.dart';

class PhoneNumberTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const PhoneNumberTextField({
    Key? key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.phone_iphone),
        hintText: context.getTranslator().mobilePhoneNumber,
      ),
      validator: (value) {
        return context.validateFiled(PhoneNumberValidator(value));
      },
    );
  }
}
