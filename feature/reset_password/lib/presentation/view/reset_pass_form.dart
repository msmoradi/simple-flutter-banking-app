import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reset_password/presentation/bloc/reset_pass_bloc.dart';
import 'package:utils/extension/build_context.dart';
import 'package:utils/validators/password_confirmation_validator.dart';

class ResetPasswordForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    final emailController = TextEditingController();

    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
        builder: (context, state) {
      return Column(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  PasswordTextField(
                    controller: emailController,
                    hint: translator.newPassword,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  PasswordTextField(
                    hint: translator.repeatNewPassword,
                    validator: (value) {
                      return context
                          .validateFiled(PasswordConfirmationValidator(
                        password: emailController.text,
                        confirmationPassword: value,
                      ));
                    },
                  ),
                ],
              )),
          const SizedBox(
            height: 48,
          ),
          PrimaryFillButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<ResetPasswordBloc>().add(
                      ResetPasswordSubmitted(
                        emailController.text,
                      ),
                    );
              }
            },
            label: translator.resetPassword,
          ),
        ],
      );
    });
  }
}
