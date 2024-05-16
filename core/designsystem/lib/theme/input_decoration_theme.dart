import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

class BanxInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: BanxColors.white,
    hintStyle: TextStyles.bodyTextBody1
        .copyWith(color: BanxColors.textColoursTertiaryTextColour),
    border: OutlineInputBorder(),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: BanxColors.primaryTextColor,
      ),
    ),
    suffixIconColor: BanxColors.textColoursTertiaryTextColour,
    errorBorder: const OutlineInputBorder(
      borderSide:
          BorderSide(style: BorderStyle.solid, color: BanxColors.error40),
    ),
  );
}
