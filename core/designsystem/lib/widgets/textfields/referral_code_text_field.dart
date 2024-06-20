import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/referral_code_validator.dart';

class ReferralCodeTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onSuffixPressed;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool needValidation;

  const ReferralCodeTextField({
    Key? key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.onSuffixPressed,
    required this.needValidation,
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
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: widget.onSuffixPressed,
          icon: const Icon(Icons.info_outline),
        ),
        prefixIcon: const Icon(Icons.person_2_outlined),
        hintText: 'کد دعوت',
      ),
      validator: (value) {
        if (widget.needValidation) {
          return context.validateFiled(ReferralCodeValidator(value));
        } else {
          return null;
        }
      },
    );
  }
}
