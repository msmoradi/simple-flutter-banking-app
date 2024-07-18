import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:banx/feature/verify_otp/presentation/view/verify_otp_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final Function() onMainPage;
  final Function() setPassword;
  final Function(String) verifyPassword;
  final Function(String) showMessage;
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;

  const VerifyOtpPage({
    super.key,
    required this.onBackPressed,
    required this.onMainPage,
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
    required this.setPassword,
    required this.verifyPassword,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<VerifyOtpBloc>(),
      child: BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
        listener: (context, state) {
          switch (state) {
            case final VerifyOtpFailure s:
              {
                showMessage(s.message);
              }
            case final VerifyOtpSuccess s:
              {
                onMainPage();
              }
            case final SetPassword s:
              {
                setPassword();
              }
            case final VerifyPassword s:
              {
                verifyPassword(s.refreshToken);
              }
          }
        },
        builder: (context, state) {
          return VerifyOtpContent(
            state: state,
            phoneNumber: phoneNumber,
            codeLength: codeLength,
            expiresIn: expiresIn,
            errorMessage: state is OtpError ? state.message : null,
          );
        },
      ),
    );
  }
}
