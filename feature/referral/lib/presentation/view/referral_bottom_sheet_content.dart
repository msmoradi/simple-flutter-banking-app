import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/referral_code_text_field.dart';
import 'package:flutter/material.dart';

class ReferralBottomSheetContent extends StatelessWidget {
  final Function(String) onConfirmPressed;

  const ReferralBottomSheetContent({super.key, required this.onConfirmPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
                'کد دعوتنامه خود را وارد کنید و از خدمات بنکس لذت ببرید :)',
              ),
              const SizedBox(
                height: 24,
              ),
              const ReferralCodeTextField(
                autofocus: true,
              ),
              const SizedBox(height: 100),
              PrimaryFillButton(
                label: 'تأیید و ادامه',
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onConfirmPressed("sample code");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
