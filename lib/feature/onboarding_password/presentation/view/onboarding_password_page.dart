import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:flutter/material.dart';

class OnboardingPasswordPage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const OnboardingPasswordPage({
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
          "رمز ورود",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/image-key.png",
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
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                          "دسترسی امن و سریع به حساب",
                        ),
                      ),
                      const SizedBox(height: 50),
                      const InfoTextRowWidget(
                        icon: Icons.person_outline,
                        title: 'تعریف رمز ۴ تا ۶ رقمی',
                        subtitle:
                            'برای دسترسی به حساب BNAX خود باید  یک رمز ورود ۴ تا ۶ رقمی تعریف کنید',
                      ),
                      const SizedBox(height: 24),
                      const InfoTextRowWidget(
                        icon: Icons.person_4_outlined,
                        title: 'فعال‌سازی ورود بیومتریک',
                        subtitle:
                            'با فعال‌سازی FaceID یا Fingerprint تلفن همراه خود از ویژگی ورود سریع به وسیله سنسور بیومتریک دستگاه خود استفاده کنید',
                      ),
                    ],
                  ),
                ),
              ),
              PrimaryFillButton(
                label: 'تعریف رمز',
                onPressed: onNext,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
