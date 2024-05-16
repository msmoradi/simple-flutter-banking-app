import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/button/fill/full_outline_button.dart';
import 'package:designsystem/widgets/textfields/otp_Input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/extension/strings.dart';

import '../bloc/verify_otp_bloc.dart';

class VerifyOtpForm extends StatefulWidget {
  final String phoneNumber;
  final int numCells;

  const VerifyOtpForm(
      {super.key, required this.phoneNumber, required this.numCells});

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

    return BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
      listener: (context, state) {
        if (state is VerifyOtpFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.message)),
            );
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "کد تأیید را وارد کنید",
            ),
            const SizedBox(height: 16),
            Text(
              "کد ${widget.numCells} رقمی ارسال شده به شماره تلفن همراه ${widget.phoneNumber} را وارد نمایید"
                  .toPersianDigits,
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
              },
              label: translator.acceptAndContinue,
              isLoading: state is VerifyOtpInProgress,
            ),
            const SizedBox(height: 16),
            PrimaryOutlineButton(
              onPressed: () {},
              label: "ارسال مجدد کد",
              isLoading: state is VerifyOtpInProgress,
            ),
          ],
        );
      },
    );
  }
}
