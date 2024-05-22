import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/components/date_picker_bottom_sheet.dart';
import 'package:designsystem/widgets/textfields/birthday_text_field.dart';
import 'package:designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:identity/presentation/bloc/identity_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:utils/extension/build_context.dart';

class IdentityForm extends StatefulWidget {
  final bool showLoading;

  const IdentityForm({super.key, this.showLoading = false});

  @override
  State<IdentityForm> createState() => _IdentityFormState();
}

class _IdentityFormState extends State<IdentityForm> {
  final formKey = GlobalKey<FormState>();
  final birthdayController = TextEditingController();
  String? _nationalId;
  String? _birthday;

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                  "اطلاعات هویتی",
                ),
              ),
              const SizedBox(height: 16),
              Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NationalIdTextField(
                        autofocus: true,
                        onSaved: (value) {
                          setState(() {
                            _nationalId = value;
                          });
                        },
                      ),
                      const SizedBox(height: 8),
                      // TODO replace with birthday
                      BirthdayTextField(
                        controller: birthdayController,
                        onTap: () {
                          showBarModalBottomSheet(
                            enableDrag: true,
                            context: context,
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            builder: (context) => DatePickerBottomSheet(
                              initialDate: _birthday ?? '',
                              onButtonPressed: (value) {
                                birthdayController.text = value;
                                setState(() {
                                  _birthday = value;
                                });
                                Navigator.of(context).pop();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
        const Spacer(),
        PrimaryFillButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
              context.read<IdentityBloc>().add(
                    IdentitySubmitted(
                        nationalId: _nationalId!, birthday: _birthday!),
                  );
            }
          },
          label: translator.acceptAndContinue,
          isLoading: widget.showLoading,
        ),
      ],
    );
  }
}
