import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class RoundedWithShadowInput extends StatefulWidget {
  final int length;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final bool useNativeKeyboard;
  final bool autofocus;

  const RoundedWithShadowInput({
    Key? key,
    this.controller,
    this.focusNode,
    this.length = 4,
    this.onCompleted,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.obscureText = false,
    this.useNativeKeyboard = true,
    this.autofocus = true,
  }) : super(key: key);

  @override
  _RoundedWithShadowInputState createState() => _RoundedWithShadowInputState();

  @override
  String toStringShort() => 'Rounded With Shadow';
}

class _RoundedWithShadowInputState extends State<RoundedWithShadowInput> {
  @override
  void dispose() {
    widget.controller?.dispose();
    widget.focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        color: const Color.fromRGBO(232, 235, 241, 0.37),
        borderRadius: BorderRadius.circular(24),
      ),
    );

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 21,
        height: 1,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(137, 146, 160, 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    return Pinput(
      length: widget.length,
      controller: widget.controller,
      focusNode: widget.focusNode,
      onCompleted: widget.onCompleted,
      onChanged: widget.onChanged,
      autofocus: widget.autofocus,
      onSubmitted: widget.onSubmitted,
      defaultPinTheme: defaultPinTheme,
      validator: widget.validator,
      obscureText: widget.obscureText,
      obscuringWidget: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary),
      ),
      useNativeKeyboard: widget.useNativeKeyboard,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      separatorBuilder: (index) => const SizedBox(width: 12),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
              offset: Offset(0, 3),
              blurRadius: 16,
            ),
          ],
        ),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Theme.of(context).colorScheme.error),
      ),
      showCursor: true,
      cursor: cursor,
    );
  }
}
