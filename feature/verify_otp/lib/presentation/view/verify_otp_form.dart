import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/button/fill/full_outline_button.dart';
import 'package:designsystem/widgets/textfields/otp_Input.dart';
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
  // GlobalKey to access the OTPInput state
  final GlobalKey<OTPInputState> otpKey = GlobalKey();

  void _onOTPComplete(String otp) {
    print("Complete OTP: $otp");
    // Additional actions upon completion e.g., verification
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
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(
            child: OTPInput(
              key: otpKey,
              numCells: widget.numCells,
              onCompleted: _onOTPComplete,
            ),
          ),
        ),
        const Spacer(),
        PrimaryFillButton(
          onPressed: () {
            // Use the key to access the getOTP method
            String currentOTP = otpKey.currentState!.getOTP();
            print("Current OTP: $currentOTP");
            FocusManager.instance.primaryFocus?.unfocus();
            context
                .read<VerifyOtpBloc>()
                .add(VerifyOtpSubmitted(widget.phoneNumber, currentOTP));
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
