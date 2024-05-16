import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

import '../bloc/verify_otp_bloc.dart';

class VerifyOtpForm extends StatefulWidget {
  final Function() onSignUpTapped;
  final Function() onForgotPasswordTapped;

  const VerifyOtpForm({
    super.key,
    required this.onSignUpTapped,
    required this.onForgotPasswordTapped,
  });

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

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
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                translator.email,
                style: TextStyles.h2.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(height: 16),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "با ثبت نام در بنکس، با شرایط استفاده و سیاست حفظ حریم خصوصی ما موافقت می‌کنید",
                textAlign: TextAlign.center,
                style: TextStyles.bodyTextBody2.copyWith(),
              ),
            ),
            const SizedBox(height: 24),
            PrimaryFillButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  context
                      .read<VerifyOtpBloc>()
                      .add(VerifyOtpSubmitted(email!, password!));
                }
              },
              label: translator.acceptAndContinue,
              isLoading: state is VerifyOtpInProgress,
            ),
          ],
        );
      },
    );
  }
}
