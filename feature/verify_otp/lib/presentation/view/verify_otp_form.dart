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
  final int numCells;

  const VerifyOtpForm(
      {super.key,
      required this.phoneNumber,
      required this.numCells,
      this.showLoading = false});

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void _onOTPComplete(String otp) {
    if (formKey.currentState!.validate()) {
      focusNode.unfocus();
      context
          .read<VerifyOtpBloc>()
          .add(VerifyOtpSubmitted(widget.phoneNumber, otp));
    }
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "کد تأیید را وارد کنید",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          "کد ${widget.numCells} رقمی ارسال شده به شماره تلفن همراه ${widget.phoneNumber} را وارد نمایید",
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        Form(
          key: formKey,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Center(
              child: RoundedWithShadowInput(
                controller: pinController,
                focusNode: focusNode,
                validator: (value) {
                  return value?.length == widget.numCells
                      ? null
                      : 'Pin is incorrect';
                },
                length: widget.numCells,
                onCompleted: _onOTPComplete,
              ),
            ),
          ),
        ),
        const Spacer(),
        PrimaryFillButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              focusNode.unfocus();
              context
                  .read<VerifyOtpBloc>()
                  .add(VerifyOtpSubmitted(widget.phoneNumber, "currentOTP"));
            }
          },
          label: translator.acceptAndContinue,
          isLoading: widget.showLoading,
        ),
        const SizedBox(height: 16),
        PrimaryOutlineButton(
          onPressed: () {},
          label: "ارسال مجدد کد",
        ),
      ],
    );
  }
}
