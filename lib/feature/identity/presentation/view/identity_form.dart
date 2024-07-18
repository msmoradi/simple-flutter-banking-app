import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/date_picker_bottom_sheet.dart';
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
  String? _referralCode = "";
  String? _birthday = "";

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
                      const SizedBox(height: 16),
                      BirthdayTextField(
                        controller: birthdayController,
                        onTap: () {
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
                      const SizedBox(height: 16),
                      ReferralCodeTextField(
                        needValidation: widget.needReferralCode,
                        controller: referralController,
                        onSaved: (value) {
                          setState(() {
                            _referralCode = value;
                          });
                        },
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
        const Spacer(),
        PrimaryFillButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<IdentityBloc>().add(
                    IdentitySubmitted(
                      phoneNumber: widget.phoneNumber,
                      nationalId: _nationalId!,
                      birthDate: _birthday!,
                      referral: _referralCode!,
                    ),
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
