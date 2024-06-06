import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/info_text_row.dart';
import 'package:flutter/material.dart';

class FaceDetectionPage extends StatelessWidget {
  final Function() onNext;

  const FaceDetectionPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                  "تشخیص چهره",
                ),
              ),
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
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                  "به نکات زیر دقت کنید",
                ),
              ),
              const SizedBox(height: 50),
              const InfoTextRowWidget(
                title: 'انجام حرکت چهره',
                subtitle:
                    'سر خود را در مقابل دوربین به سمت چپ و راست بچرخاندید تا پیام تأیید روی صفحه نمایش داده شود',
              ),
              const SizedBox(height: 24),
              const InfoTextRowWidget(
                title: 'نور و پس زمینه محیط',
                subtitle:
                    'در زمان ثبت ویدئو نور محیط کافی باشد و پس زمینه شما دیوار سفید باشد',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryFillButton(
          label: 'متوجه شدم',
          onPressed: onNext,
        ),
      ),
    );
  }
}
