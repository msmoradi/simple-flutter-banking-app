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
  final bool readOnly;
  final String? errorText;
  final bool forceErrorState;
  final SmsRetriever? smsRetriever;

  const RoundedWithShadowInput({
    super.key,
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
    this.readOnly = false,
    this.errorText,
    this.forceErrorState = false,
    this.smsRetriever,
  });

  @override
  _RoundedWithShadowInputState createState() => _RoundedWithShadowInputState();

  @override
  String toStringShort() => 'Rounded With Shadow';
}

class _RoundedWithShadowInputState extends State<RoundedWithShadowInput> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        color: Theme.of(context).colorScheme.surface,
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
      smsRetriever: widget.smsRetriever,
      controller: widget.controller,
      readOnly: widget.readOnly,
      focusNode: widget.focusNode,
      onCompleted: widget.onCompleted,
      onChanged: widget.onChanged,
      autofocus: widget.autofocus,
      onSubmitted: widget.onSubmitted,
      defaultPinTheme: defaultPinTheme,
      validator: widget.validator,
      errorText: widget.errorText,
      errorBuilder: (String? errorText, String pin) {
        return Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              errorText ?? 'خطایی رخ داده است',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.error),
            ),
          ),
        );
      },
      forceErrorState: widget.forceErrorState,
      obscureText: widget.obscureText,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
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
      focusedPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Theme.of(context).colorScheme.error),
      ),
      showCursor: true,
      cursor: cursor,
    );
  }
}
