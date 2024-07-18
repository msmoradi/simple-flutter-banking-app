import 'package:banx/feature/phone/presentation/view/phone_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/phone_bloc.dart';

class PhonePage extends StatelessWidget {
  final Function(String, int, int) onVerifyOtp;
  final Function(String, bool) onIdentity;
  final Function(String) showMessage;

  const PhonePage({
    super.key,
    required this.onVerifyOtp,
    required this.onIdentity,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<PhoneBloc>(),
      child: BlocConsumer<PhoneBloc, PhoneState>(
        listener: (context, state) {
          if (state is PhoneFailure) {
            showMessage(state.message);
          } else if (state is VerifyOtpSuccess) {
            onVerifyOtp(
              state.phoneNumber,
              state.expiresIn,
              state.codeLength,
            );
          } else if (state is Identity) {
            onIdentity(state.phoneNumber, state.needReferralCode);
          }
        },
        builder: (context, state) {
          return PhoneContent(state: state);
        },
      ),
    );
  }
}
