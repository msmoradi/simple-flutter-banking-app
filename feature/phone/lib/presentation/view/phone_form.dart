import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

import '../bloc/phone_bloc.dart';

class PhoneForm extends StatefulWidget {
  final Function() onSignUpTapped;
  final Function() onForgotPasswordTapped;

  const PhoneForm({
    super.key,
    required this.onSignUpTapped,
    required this.onForgotPasswordTapped,
  });

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return BlocConsumer<PhoneBloc, PhoneState>(
      listener: (context, state) {
        if (state is PhoneFailure) {
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
                translator.mobilePhoneNumber,
                style: TextStyles.h2.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
            const SizedBox(height: 16),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PhoneNumberTextField(
                      onSaved: (value) {
                        email = value;
                      },
                    ),
                  ],
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
                      .read<PhoneBloc>()
                      .add(PhoneSubmitted(email!, password!));
                }
              },
              label: translator.acceptAndContinue,
              isLoading: state is PhoneInProgress,
            ),
          ],
        );
      },
    );
  }
}
