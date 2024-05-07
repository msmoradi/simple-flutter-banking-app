import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/email_text_field.dart';
import 'package:designsystem/widgets/textfields/password_text_field.dart';
import 'package:designsystem/widgets/textfields/simple_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

import '../bloc/sign_up_bloc.dart';

class SignUpForm extends StatefulWidget {
  final Function() onLoginClicked;

  const SignUpForm({super.key, required this.onLoginClicked});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    return BlocConsumer<SignUpBloc, SignUpState>(listener: (context, state) {
      if (state is SignUpFailure) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(content: Text(state.message)),
          );
      }
    }, builder: (context, state) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                translator.createAnAccountTitle,
                style: TextStyles.h4.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                translator.signUpDescription,
                style: TextStyles.bodyTextBody1
                    .copyWith(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
            const SizedBox(height: 32),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    ...[
                      Row(
                        children: [
                          Flexible(
                            flex: 10,
                            child: SimpleTextField(
                              hintText: translator.firstName,
                            ),
                          ),
                          const Spacer(),
                          Flexible(
                            flex: 10,
                            child: SimpleTextField(
                              hintText: translator.lastName,
                            ),
                          ),
                        ],
                      ),
                      const EmailTextField(),
                      const PasswordTextField(),
                    ].expand(
                      (widget) => [
                        widget,
                        const SizedBox(
                          height: 12,
                        )
                      ],
                    )
                  ],
                )),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Flexible(
                    flex: 1,
                    child: Text(
                      translator.termsAndConditionsDescription,
                      style: TextStyles.bodyTextBody2.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary),
                    ))
              ],
            ),
            const SizedBox(height: 48),
            PrimaryFillButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              label: translator.createAccountTitle,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    translator.alreadyHaveAnAccount,
                    style: TextStyles.bodyTextBody1.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  TextButton(
                    onPressed: widget.onLoginClicked,
                    child: Text(
                      translator.logIn,
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
    });
  }
}
