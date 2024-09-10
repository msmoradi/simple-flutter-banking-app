import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:flutter/material.dart';

class OnboardingFacePage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const OnboardingFacePage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          "تشخیص چهره",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/onboarding_face.png",
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
                          "به نکات زیر دقت کنید",
                        ),
                      ),
                      const SizedBox(height: 50),
                      const InfoTextRowWidget(
                        iconAsset: 'assets/icons/check-circle.svg',
                        title: 'انجام حرکت چهره',
                        subtitle:
                            'سر خود را در مقابل دوربین به سمت چپ و راست بچرخاندید تا پیام تأیید روی صفحه نمایش داده شود',
                      ),
                      const SizedBox(height: 24),
                      const InfoTextRowWidget(
                        iconAsset: 'assets/icons/check-circle.svg',
                        title: 'نور و پس زمینه محیط',
                        subtitle:
                            'در زمان ثبت ویدئو نور محیط کافی باشد و پس زمینه شما دیوار سفید باشد',
                      ),
                    ],
                  ),
                ),
              ),
              PrimaryFillButton(
                label: 'متوجه شدم',
                onPressed: onNext,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
