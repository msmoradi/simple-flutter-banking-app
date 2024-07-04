import 'package:confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

class ConfirmPasswordContent extends StatefulWidget {
  final String newPassword;
  final String phoneNumber;
  final ConfirmPasswordState state;

  const ConfirmPasswordContent({
    super.key,
    required this.newPassword,
    required this.phoneNumber,
    required this.state,
  });

  @override
  State<ConfirmPasswordContent> createState() => _ConfirmPasswordContentState();
}

class _ConfirmPasswordContentState extends State<ConfirmPasswordContent> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "تأیید رمز عبور",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "رمز ورود خود را مجدد وارد نمایید",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 56),
            Form(
              key: formKey,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Center(
                  child: RoundedWithShadowInput(
                    obscureText: true,
                    controller: pinController,
                    focusNode: focusNode,
                    validator: (value) {
                      return value?.length == 4 && value == widget.newPassword
                          ? null
                          : 'Pin is incorrect';
                    },
                    length: 4,
                  ),
                ),
              ),
            ),
            const Spacer(),
            PrimaryFillButton(
              isLoading: widget.state is ConfirmPasswordInProgress,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  context.read<ConfirmPasswordBloc>().add(
                        ConfirmPasswordSubmitted(
                          phoneNumber: widget.phoneNumber,
                          password: pinController.text,
                        ),
                      );
                }
              },
              label: translator.acceptAndContinue,
            ),
          ],
        ),
      ),
    );
  }
}
