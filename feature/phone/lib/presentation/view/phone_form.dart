import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

import '../bloc/phone_bloc.dart';

class PhoneForm extends StatefulWidget {
  final bool showLoading;

  const PhoneForm({
    super.key,
    required this.showLoading,
  });

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  final _formKey = GlobalKey<FormState>();
  late final FocusNode focusNode;

  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
            translator.mobilePhoneNumber,
          ),
        ),
        const SizedBox(height: 16),
        Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhoneNumberTextField(
                  autofocus: true,
                  onSaved: (value) {
                    phoneNumber = value;
                  },
                ),
              ],
            )),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'با ثبت نام در بنکس، با ',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                  children: [
                    TextSpan(
                      text: 'شرایط استفاده',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle click event here
                          print('Gold text clicked!');
                        },
                    ),
                    TextSpan(
                      text: ' و ',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    TextSpan(
                      text: 'سیاست حفظ حریم خصوصی',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle click event here
                          print('Gold text clicked!');
                        },
                    ),
                    TextSpan(
                      text: ' ما موافقت می‌کنید',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    )
                  ]),
            )),
        const SizedBox(height: 24),
        PrimaryFillButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState?.save();
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<PhoneBloc>().add(PhoneSubmitted(phoneNumber!));
            }
          },
          label: translator.acceptAndContinue,
          isLoading: widget.showLoading,
        ),
      ],
    );
  }
}
