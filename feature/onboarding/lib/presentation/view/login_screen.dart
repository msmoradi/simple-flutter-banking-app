import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';

import 'onboarding_page.dart';

class LoginScreen extends StatelessWidget {
  final PageController controller;
  final Function() onLoginTapped;
  final Function() onSignUpTapped;
  final Function() onSkipLoginTapped;

  const LoginScreen({
    super.key,
    required this.controller,
    required this.onLoginTapped,
    required this.onSignUpTapped,
    required this.onSkipLoginTapped,
  });

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Container(
      constraints: const BoxConstraints.expand(),
      child: Stack(children: [
        Image.asset(
          "assets/images/slide-03.png",
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
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      translator.launchScreenLoginTitle,
                      style: TextStyles.h2
                          .copyWith(color: BanxColors.primaryTextColor),
                    ),
                  ),
                  TextButton(
                    onPressed: onSkipLoginTapped,
                    child: Text(translator.skip),
                  )
                ],
              ),
              const Spacer(),
              PrimaryFillButton(
                label: translator.logIn,
                onPressed: onLoginTapped,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      translator.doNotHaveAccount,
                      style: TextStyles.bodyTextBody1
                          .copyWith(color: BanxColors.white),
                    ),
                    TextButton(
                      onPressed: onSignUpTapped,
                      child: Text(translator.signUp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
