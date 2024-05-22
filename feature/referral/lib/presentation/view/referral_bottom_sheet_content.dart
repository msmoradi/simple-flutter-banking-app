import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/phone_number_text_field.dart';
import 'package:flutter/material.dart';

class ReferralBottomSheetContent extends StatelessWidget {
  final Function() onNext;
  final bool showLoading;

  const ReferralBottomSheetContent(
      {super.key, required this.onNext, required this.showLoading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
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
          const SizedBox(height: 200),
          PrimaryFillButton(
            isLoading: showLoading,
            label: 'تأیید و ادامه',
            onPressed: () {
              Navigator.of(context).pop();
              onNext();
            },
          )
        ],
      ),
    );
  }
}
