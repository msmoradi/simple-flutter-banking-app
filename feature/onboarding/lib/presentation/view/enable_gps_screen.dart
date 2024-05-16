import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/presentation/view/onboarding_page.dart';
import 'package:utils/extension/build_context.dart';

class EnableGpsScreen extends StatelessWidget {
  final PageController controller;

  const EnableGpsScreen(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Container(
      constraints: const BoxConstraints.expand(),
      child: Stack(children: [
        Image.asset(
          "assets/images/slide-02.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: OnboardingPage.verticalPagePadding,
              horizontal: OnboardingPage.horizontalPagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      translator.launchScreenGPSScreenTitle,
                      style: TextStyles.h2
                          .copyWith(color: BanxColors.primaryTextColor),
                    ),
                  ),
                  TextButton(
                    child: Text(translator.skip),
                    onPressed: () {
                      controller.nextPage(
                          duration: OnboardingPage.animatesDuration,
                          curve: OnboardingPage.animatesCurve);
                    },
                  )
                ],
              ),
              PrimaryFillButton(
                label: translator.enableLocation,
                onPressed: () {},
              )
            ],
          ),
        )
      ]),
    );
  }
}
