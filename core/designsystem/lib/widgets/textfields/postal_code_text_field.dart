import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/phone_number_validator.dart';
import 'package:utils/validators/postal_code_validator.dart';

class PostalCodeTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  const PostalCodeTextField({
    super.key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<PostalCodeTextField> createState() => _PostalCodeTextFieldState();
}

class _PostalCodeTextFieldState extends State<PostalCodeTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.location_on_outlined),
        hintText: 'کدپستی ۱۰ رقمی',
      ),
      validator: (value) {
        return context.validateFiled(PostalCodeValidator(value));
      },
    );
  }
}
