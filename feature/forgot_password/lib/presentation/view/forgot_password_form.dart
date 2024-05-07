import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:utils/extension/build_context.dart';

class ForgotPasswordForm extends StatefulWidget {
  final Function() onForgotPasswordSucceed;

  const ForgotPasswordForm({super.key, required this.onForgotPasswordSucceed});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordSuccess) {
          widget.onForgotPasswordSucceed();
        } else if (state is ForgotPasswordFailure) {
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
              alignment: Alignment.centerLeft,
              child: Text(
                translator.forgotPassword,
                style: TextStyles.h4.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                translator.enterValidEmail,
                style: TextStyles.bodyTextBody1
                    .copyWith(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
            const SizedBox(height: 56),
            Form(
              key: _formKey,
              child: EmailTextField(
                controller: emailController,
              ),
            ),
            const SizedBox(height: 48),
            PrimaryFillButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context
                      .read<ForgotPasswordBloc>()
                      .add(ForgotPasswordSubmitted(emailController.text));
                }
              },
              label: translator.reset,
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                translator.willSendPassResetEmail,
                style: TextStyles.bodyTextBody1
                    .copyWith(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
          ],
        );
      },
    );
  }
}
