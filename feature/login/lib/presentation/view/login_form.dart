import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/email_text_field.dart';
import 'package:designsystem/widgets/textfields/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

import '../bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  final Function() onSignUpTapped;
  final Function() onForgotPasswordTapped;

  const LoginForm({
    super.key,
    required this.onSignUpTapped,
    required this.onForgotPasswordTapped,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.message)),
            );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  translator.logIn,
                  style: TextStyles.h4.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  translator.logInExperienceTitle,
                  style: TextStyles.bodyTextBody1.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
              const SizedBox(height: 56),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EmailTextField(
                        onSaved: (value) {
                          email = value;
                        },
                      ),
                      const SizedBox(height: 12),
                      PasswordTextField(
                        onSaved: (value) {
                          password = value;
                        },
                      ),
                    ],
                  )),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: widget.onForgotPasswordTapped,
                  child: Text(
                    translator.forgotPassword,
                    style: TextStyles.h7
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              const SizedBox(height: 48),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    context
                        .read<LoginBloc>()
                        .add(LoginSubmitted(email!, password!));
                  }
                },
                label: translator.logIn,
                isLoading: state is LoginInProgress,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      translator.doNotHaveAccount,
                      style: TextStyles.bodyTextBody1.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                    TextButton(
                      onPressed: widget.onSignUpTapped,
                      child: Text(
                        translator.signUp,
                        style: TextStyles.h7.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
