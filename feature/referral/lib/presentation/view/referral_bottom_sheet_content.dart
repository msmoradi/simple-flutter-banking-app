import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              Text(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
                'کد دعوتنامه خود را وارد کنید و از خدمات بنکس لذت ببرید :)',
              ),
              const SizedBox(
                height: 24,
              ),
              const PhoneNumberTextField(),
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
