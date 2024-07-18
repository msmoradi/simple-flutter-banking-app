import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:flutter/material.dart';

class KycStatusPage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const KycStatusPage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          'در انتظار بازکردن حساب',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                Image.asset(
                  "assets/images/kyc_status.png",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                    "مراحل شناسایی و احراز هویت",
                  ),
                ),
                const SizedBox(height: 50),
                const InfoTextRowWidget(
                  icon: Icons.person_4_outlined,
                  title: 'مالکیت شماره تلفن همراه',
                  subtitle: 'تطابق شماره تلفن همراه و کدملی شما انجام شده',
                ),
                const SizedBox(height: 24),
                const InfoTextRowWidget(
                  icon: Icons.person_4_outlined,
                  title: 'شناسایی هویت',
                  subtitle: 'دریافت اطلاعات شما از ثبت احوال در حال انجام است',
                ),
                const SizedBox(height: 24),
                const InfoTextRowWidget(
                  icon: Icons.person_4_outlined,
                  title: 'احراز هویت',
                  subtitle:
                      'بررسی چهره و تطبیق آن با هویت شما در حال انجام است',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryFillButton(
          label: 'مشاهده ویژگی‌های بنکس',
          icon: Icons.lightbulb_outline_rounded,
          onPressed: onNext,
        ),
      ),
    );
  }
}
