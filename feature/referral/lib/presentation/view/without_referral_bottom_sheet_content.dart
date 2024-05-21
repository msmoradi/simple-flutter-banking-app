import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:referral/presentation/view/with_icon_row.dart';

class WithOutReferralBottomSheetContent extends StatelessWidget {
  const WithOutReferralBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24),
          AspectRatio(
            aspectRatio: 2.0,
            child: Image.asset(
              "assets/images/referral_frame.png",
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              style: Theme.of(context).textTheme.headlineMedium,
              'دریافت دعوتنامه',
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'حضور در بنکس فقط به دعوت اعضاء آن امکان پذیر است، روش‌های مختلفی برای دریافت دعوتنامه وجود دارد. ',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'روش‌های پیشنهادی برای دریافت دعوتنامه',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 16),
          const WithIconRow(
            icon: Icons.connecting_airports_sharp,
            text: 'جستجو بین دوستان و آشنایان خود',
          ),
          const SizedBox(height: 16),
          const WithIconRow(
            icon: Icons.connecting_airports_sharp,
            text: 'انتشار درخواست دعوتنامه در شبکه‌های اجتماعی',
          ),
          const SizedBox(height: 16),
          const WithIconRow(
            icon: Icons.connecting_airports_sharp,
            text: 'ثبت‌نام در لیست انتظار برای دریافت دعوتنامه',
          ),
          const SizedBox(height: 100),
          PrimaryFillButton(
            label: 'متوجه شدم',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
