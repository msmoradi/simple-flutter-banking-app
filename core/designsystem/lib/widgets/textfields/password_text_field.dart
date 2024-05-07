import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/password_validator.dart';

class PasswordTextField extends StatefulWidget {
  final String? hint;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FormFieldValidator? validator;

  const PasswordTextField({
    Key? key,
    this.hint,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.bodyTextBody1
          .copyWith(color: Theme.of(context).colorScheme.onBackground),
      controller: widget.controller,
      keyboardType: TextInputType.text,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        hintText: widget.hint ?? context.getTranslator().password,
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
      validator: widget.validator ??
          (value) {
            return context.validateFiled(PasswordValidator(value));
          },
    );
  }
}
