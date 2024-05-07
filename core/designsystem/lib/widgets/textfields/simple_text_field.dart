import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class SimpleTextField extends StatefulWidget {
  final String? hintText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;

  const SimpleTextField(
      {Key? key,
      this.hintText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.controller})
      : super(key: key);

  @override
  State<SimpleTextField> createState() => _SimpleTextFieldState();
}

class _SimpleTextFieldState extends State<SimpleTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.bodyTextBody1
          .copyWith(color: Theme.of(context).colorScheme.onBackground),
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: widget.hintText,
      ),
    );
  }
}
