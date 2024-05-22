import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/referral_code_validator.dart';

class ReferralCodeTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  const ReferralCodeTextField({
    Key? key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.autofocus = false,
  }) : super(key: key);

  @override
  State<ReferralCodeTextField> createState() => _ReferralCodeTextFieldState();
}

class _ReferralCodeTextFieldState extends State<ReferralCodeTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person_2_outlined),
        hintText: 'کد دعوتنامه',
      ),
      validator: (value) {
        return context.validateFiled(ReferralCodeValidator(value));
      },
    );
  }
}
