import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/birth_date_bottom_sheet.dart';
import 'package:banx/core/designsystem/widgets/textfields/birthday_text_field.dart';
import 'package:banx/core/designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:banx/core/designsystem/widgets/textfields/referral_code_text_field.dart';
import 'package:banx/core/utils/extension/build_context.dart';
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart';
import 'package:banx/feature/identity/presentation/view/referral_bottom_sheet_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdentityForm extends StatefulWidget {
  final bool showLoading;
  final bool needReferralCode;
  final String phoneNumber;

  const IdentityForm({
    super.key,
    this.showLoading = false,
    required this.phoneNumber,
    required this.needReferralCode,
  });

  @override
  State<IdentityForm> createState() => _IdentityFormState();
}

class _IdentityFormState extends State<IdentityForm> {
  final formKey = GlobalKey<FormState>();
  final birthdayController = TextEditingController();
  final referralController = TextEditingController();
  String? _nationalId = "";

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                        const SizedBox(height: 16),
                        BirthdayTextField(
                          controller: birthdayController,
                          onTap: () {
                            showModalBottomSheet(
                              enableDrag: false,
                              showDragHandle: true,
                              context: context,
                              useSafeArea: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                              ),
                              isScrollControlled: true,
                              builder: (context) {
                                return BirthDateBottomSheet(
                                    onCancelPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    onConfirmPressed: (newDate) {
                                      birthdayController.text = newDate;
                                      Navigator.of(context).pop();
                                    },
                                    birthDate: birthdayController.text);
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        ReferralCodeTextField(
                          needValidation: widget.needReferralCode,
                          controller: referralController,
                          onSuffixPressed: () {
                            showModalBottomSheet(
                              enableDrag: false,
                              showDragHandle: true,
                              isScrollControlled: true,
                              useSafeArea: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                              ),
                              context: context,
                              builder: (context) =>
                                  const WithOutReferralBottomSheetContent(),
                            );
                          },
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
        PrimaryFillButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<IdentityBloc>().add(
                    IdentitySubmitted(
                      phoneNumber: widget.phoneNumber,
                      nationalId: _nationalId!,
                      birthDate: birthdayController.text,
                      referral: referralController.text,
                    ),
                  );
            }
          },
          label: translator.acceptAndContinue,
          isLoading: widget.showLoading,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
