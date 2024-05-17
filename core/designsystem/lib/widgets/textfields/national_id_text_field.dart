import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/national_id_number_validator.dart';

class NationalIdTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const NationalIdTextField({
    Key? key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  @override
  State<NationalIdTextField> createState() => _NationalIdTextFieldState();
}

class _NationalIdTextFieldState extends State<NationalIdTextField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.number,
      maxLength: 10,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person_outline),
        hintText: "کدملی ۱۰ رقمی",
      ),
      validator: (value) {
        return context.validateFiled(NationalIdValidator(value));
      },
    );
  }
}
