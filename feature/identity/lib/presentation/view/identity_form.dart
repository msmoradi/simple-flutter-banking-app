import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:identity/presentation/bloc/identity_bloc.dart';
import 'package:utils/extension/build_context.dart';

class IdentityForm extends StatefulWidget {
  final bool showLoading;

  const IdentityForm({super.key, this.showLoading = false});

  @override
  State<IdentityForm> createState() => _IdentityFormState();
}

class _IdentityFormState extends State<IdentityForm> {
  final nationalIdFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(nationalIdFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    String? _nationalId;
    String? _birthday;

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
                        focusNode: nationalIdFocusNode,
                        onSaved: (value) {
                          _nationalId = value;
                        },
                      ),
                      const SizedBox(height: 8),
                      // TODO replace with birthday
                      PhoneNumberTextField(
                        onSaved: (value) {
                          _birthday = value;
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
            /*if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
              context.read<IdentityBloc>().add(
                    IdentitySubmitted(
                        nationalId: _nationalId!, birthday: _birthday!),
                  );
            }*/
            formKey.currentState?.save();
            context.read<IdentityBloc>().add(
              IdentitySubmitted(
                  nationalId: _nationalId!, birthday: _birthday!),
            );
          },
          label: translator.acceptAndContinue,
          isLoading: widget.showLoading,
        ),
      ],
    );
  }
}
