import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils/extension/build_context.dart';

import '../bloc/identity_bloc.dart';

class IdentityForm extends StatefulWidget {
  final Function(String, String, int) onVerifyOtp;

  const IdentityForm({
    super.key,
    required this.onVerifyOtp,
  });

  @override
  State<IdentityForm> createState() => _IdentityFormState();
}

class _IdentityFormState extends State<IdentityForm> {
  final _formKey = GlobalKey<FormState>();
  final nationalIdFocusNode = FocusNode();
  String? phoneNumber;

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

    return BlocConsumer<IdentityBloc, IdentityState>(
      listener: (context, state) {
        if (state is IdentityFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.message)),
            );
        } else if (state is IdentitySuccess) {
          widget.onVerifyOtp(
              state.phoneNumber, state.sessionId, state.numCells);
        }
      },
      builder: (context, state) {
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
                "اطلاعات هویتی",
              ),
            ),
            const SizedBox(height: 16),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NationalIdTextField(
                      focusNode: nationalIdFocusNode,
                      onSaved: (value) {
                        phoneNumber = value;
                      },
                    ),
                    const SizedBox(height: 8),
                    PhoneNumberTextField(
                      onSaved: (value) {
                        phoneNumber = value;
                      },
                    ),
                  ],
                )),
            const Spacer(),
            PrimaryFillButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  context
                      .read<IdentityBloc>()
                      .add(IdentitySubmitted(phoneNumber!));
                }
              },
              label: translator.acceptAndContinue,
              isLoading: state is IdentityInProgress,
            ),
          ],
        );
      },
    );
  }
}
