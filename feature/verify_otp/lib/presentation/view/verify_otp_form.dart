import 'dart:async';

import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/button/fill/full_outline_button.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';
import 'package:verify_otp/phone.dart';

class VerifyOtpForm extends StatefulWidget {
  final bool showLoading;
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;
  final String? errorMessage;

  const VerifyOtpForm({
    super.key,
    required this.phoneNumber,
    this.showLoading = false,
    required this.codeLength,
    required this.expiresIn,
    this.errorMessage,
  });

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  late Timer _timer;
  int _start = 60; // Initial countdown value in seconds
  bool _isButtonEnabled = false; // To control the resend button state

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _isButtonEnabled = false;
    setState(() {
      _start = widget.expiresIn; // Reset countdown to 60 seconds
    });
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _isButtonEnabled = true;
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void _onOTPComplete(String otp) {
    if (formKey.currentState!.validate()) {
      focusNode.unfocus();
      context.read<VerifyOtpBloc>().add(
            VerifyOtpSubmitted(
              phoneNumber: widget.phoneNumber,
              otp: otp,
              codeLength: widget.codeLength,
            ),
          );
    }
  }

  void _onSubmitTapped() {
    focusNode.unfocus();
    context.read<VerifyOtpBloc>().add(
          VerifyOtpSubmitted(
            phoneNumber: widget.phoneNumber,
            otp: pinController.value.text,
            codeLength: widget.codeLength,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
            "تأیید تلفن همراه",
          ),
        ),
        const SizedBox(height: 32),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'کد ${widget.codeLength} رقمی ارسال شده به شماره',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              children: [
                TextSpan(
                  text: ' ${widget.phoneNumber} ',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'را وارد کنید',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ]),
        ),
        const SizedBox(height: 32),
        Form(
          key: formKey,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Center(
              child: RoundedWithShadowInput(
                controller: pinController,
                readOnly: widget.showLoading,
                errorText: widget.errorMessage,
                forceErrorState: widget.errorMessage != null,
                focusNode: focusNode,
                validator: (value) {
                  return value?.length == widget.codeLength
                      ? null
                      : 'کد پیامک شده را وارد نمایید';
                },
                length: widget.codeLength,
                onCompleted: _onOTPComplete,
                onSubmitted: _onOTPComplete,
              ),
            ),
          ),
        ),
        const Spacer(),
        PrimaryFillButton(
          onPressed: _onSubmitTapped,
          label: translator.acceptAndContinue,
          isLoading: widget.showLoading,
        ),
        const SizedBox(height: 16),
        _isButtonEnabled
            ? PrimaryOutlineButton(
                onPressed: () {
                  _startTimer();
                  context
                      .read<VerifyOtpBloc>()
                      .add(ResendCode(phoneNumber: widget.phoneNumber));
                },
                label: "ارسال مجدد کد",
              )
            : PrimaryFillButton(
                onPressed: null,
                label: "ارسال دوباره کد | $_start ثانیه",
              ),
      ],
    );
  }
}
