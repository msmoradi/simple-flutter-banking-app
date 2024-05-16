import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/presentation/view/onboarding_start_up_screen.dart';

import 'login_screen.dart';

class OnboardingPage extends StatelessWidget {
  static const double verticalPagePadding = 56;
  static const double horizontalPagePadding = 16;
  static const Duration animatesDuration = Duration(milliseconds: 400);
  static const Cubic animatesCurve = Curves.easeIn;
  final Function() onLoginTapped;
  final Function() onSignUpTapped;
  final Function() onSkipLoginTapped;

  const OnboardingPage({
    super.key,
    required this.onLoginTapped,
    required this.onSignUpTapped,
    required this.onSkipLoginTapped,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    final controller = PageController(initialPage: 0);

    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          OnboardingStartUpScreen(controller),
          LoginScreen(
            controller: controller,
            onLoginTapped: onLoginTapped,
            onSignUpTapped: onSignUpTapped,
            onSkipLoginTapped: onSkipLoginTapped,
          ),
        ],
      ),
    );
  }
}
