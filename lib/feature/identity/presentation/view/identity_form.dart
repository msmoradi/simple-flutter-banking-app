import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/birthday_text_field.dart';
import 'package:banx/core/designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:banx/core/designsystem/widgets/textfields/referral_code_text_field.dart';
import 'package:banx/core/utils/extension/build_context.dart';
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart';
import 'package:banx/feature/identity/presentation/view/referral_bottom_sheet_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

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

    Jalali jalaliFromString(String x) {
      List<String> parts = x.split('/');
      int year = int.parse(parts[0]);
      int month = int.parse(parts[1]);
      int day = int.parse(parts[2]);
      return Jalali(year, month, day);
    }

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
                            showModalBottomSheet<Jalali>(
                              enableDrag: false,
                              showDragHandle: true,
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                Jalali? tempPickedDate;
                                Jalali initialDateTime =
                                    birthdayController.text.isEmpty
                                        ? Jalali(1375, 4)
                                        : jalaliFromString(birthdayController.text);
                                return SizedBox(
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CupertinoButton(
                                              child: Text(
                                                'تایید',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                              onPressed: () {
                                                Jalali jalaliDate =
                                                    tempPickedDate ??
                                                        initialDateTime;
                                                String formattedDate =
                                                    '${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}';
                                                birthdayController.text =
                                                    formattedDate;
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            CupertinoButton(
                                              child: Text(
                                                'لغو',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Divider(
                                        height: 0,
                                        thickness: 1,
                                      ),
                                      Expanded(
                                        child: CupertinoTheme(
                                          data: CupertinoThemeData(
                                            textTheme: CupertinoTextThemeData(
                                              dateTimePickerTextStyle:
                                                  Theme.of(context)
                                                      .textTheme
                                                      .titleMedium,
                                            ),
                                          ),
                                          child: PCupertinoDatePicker(
                                            mode: PCupertinoDatePickerMode.date,
                                            initialDateTime: initialDateTime,
                                            minimumDate: Jalali(1310, 8),
                                            maximumDate: Jalali(1510, 9),
                                            onDateTimeChanged:
                                                (Jalali dateTime) {
                                              tempPickedDate = dateTime;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
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
      ],
    );
  }
}
