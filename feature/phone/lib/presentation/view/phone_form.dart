import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
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
  final focusNode = FocusNode();

  String? phoneNumber;

  @override
  void initState() {
    super.initState();
    // Auto-focus the first input cell
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(focusNode);
    });
  }

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
                  focusNode: focusNode,
                  onSaved: (value) {
                    phoneNumber = value;
                  },
                ),
              ],
            )),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "با ثبت نام در بنکس، با شرایط استفاده و سیاست حفظ حریم خصوصی ما موافقت می‌کنید",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        PrimaryFillButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState?.save();
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
