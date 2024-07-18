import 'package:banx/core/designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:banx/feature/verify_otp/presentation/view/view.dart';
import 'package:flutter/material.dart';

class VerifyOtpContent extends StatelessWidget {
  final VerifyOtpState state;
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;
  final String? errorMessage;

  const VerifyOtpContent({
    super.key,
    required this.state,
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: VerifyOtpForm(
            showLoading: state is VerifyOtpInProgress,
            phoneNumber: phoneNumber,
            codeLength: codeLength,
            expiresIn: expiresIn,
            errorMessage: errorMessage),
      ),
    );
  }
}
