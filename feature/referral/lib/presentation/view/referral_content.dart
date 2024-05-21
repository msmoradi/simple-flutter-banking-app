import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:referral/presentation/bloc/referral_bloc.dart';

class ReferralContent extends StatelessWidget {
  final ReferralState state;

  const ReferralContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          children: [
            Image.asset(
              "assets/images/referral_frame.png",
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 24),
            Text(
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              'دعوت‌نامه ثبت‌نام',
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
                'ثبت‌نام در بنکس تنها بوسیله کد دعوت امکان پذیر است، جهت ثبت نام از دوستان و آشنایان خودتان کد دعوت دریافت کنید',
              ),
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PrimaryFillButton(
                      onPressed: () {},
                      label: 'کد دعوت دارم',
                      fillWidth: false,
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: PrimaryFillButton(
                      onPressed: () {},
                      label: 'کد ندارم',
                      fillWidth: false,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
