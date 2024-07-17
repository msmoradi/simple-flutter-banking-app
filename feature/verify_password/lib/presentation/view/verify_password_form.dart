import 'dart:async';

import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';
import 'package:verify_password/presentation/bloc/verify_password_bloc.dart';

class VerifyPasswordForm extends StatefulWidget {
  final bool showLoading;
  final String phoneNumber;
  final String refreshToken;
  final String? errorMessage;

  const VerifyPasswordForm({
    super.key,
    required this.phoneNumber,
    required this.refreshToken,
    this.showLoading = false,
    this.errorMessage,
  });

  @override
  State<VerifyPasswordForm> createState() => _VerifyPasswordFormState();
}

class _VerifyPasswordFormState extends State<VerifyPasswordForm> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  late Timer _timer;
  int _start = 60; // Initial countdown value in seconds

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _onOTPComplete(String password) {
    if (formKey.currentState!.validate()) {
      focusNode.unfocus();
      context.read<VerifyPasswordBloc>().add(
            VerifyPasswordSubmitted(
              phoneNumber: widget.phoneNumber,
              refreshToken: widget.refreshToken,
              password: password,
            ),
          );
    }
  }

  void _onSubmitTapped() {
    focusNode.unfocus();
    context.read<VerifyPasswordBloc>().add(
          VerifyPasswordSubmitted(
            phoneNumber: widget.phoneNumber,
            refreshToken: widget.refreshToken,
            password: pinController.value.text,
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
                  return value?.length == 4
                      ? null
                      : 'کد پیامک شده را وارد نمایید';
                },
                length: 4,
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
      ],
    );
  }
}
