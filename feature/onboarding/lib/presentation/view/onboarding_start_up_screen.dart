import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';

import 'onboarding_page.dart';

class OnboardingStartUpScreen extends StatelessWidget {
  final PageController controller;

  const OnboardingStartUpScreen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    return Container(
      constraints: const BoxConstraints.expand(),
      child: Stack(children: [
        Image.asset(
          "assets/images/slide-01.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: InitialPage.verticalPagePadding,
              horizontal: InitialPage.horizontalPagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translator.launchScreenFirstPageTitle,
                style: TextStyles.h1
                    .copyWith(color: BanxColors.primaryTextColor),
              ),
              PrimaryFillButton(
                label: translator.getStarted,
                onPressed: () {
                  controller.nextPage(
                      duration: InitialPage.animatesDuration,
                      curve: InitialPage.animatesCurve);
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
