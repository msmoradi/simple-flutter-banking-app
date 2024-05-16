import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/email_validator.dart';

class EmailTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;

  const EmailTextField({
    Key? key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
  }) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: context.getTranslator().email,
      ),
      validator: (value) {
        return context.validateFiled(EmailValidator(value));
      },
    );
  }
}
