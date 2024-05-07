import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

class BanxInputDecorationTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    fillColor: BanxColors.white,
    hintStyle: TextStyles.bodyTextBody1
        .copyWith(color: BanxColors.textColoursTertiaryTextColour),
    disabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: BanxColors.primaryTextColor,
      ),
    ),
    suffixIconColor: BanxColors.textColoursTertiaryTextColour,
    errorBorder: const UnderlineInputBorder(
      borderSide:
          BorderSide(style: BorderStyle.solid, color: BanxColors.error40),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    fillColor: BanxColors.darkModeDarkModeBg,
    hintStyle: TextStyles.bodyTextBody1
        .copyWith(color: BanxColors.textColoursDarkModeTertiaryText),
    disabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
          style: BorderStyle.solid,
          color: BanxColors.textColoursDarkModePrimaryText),
    ),
    suffixIconColor: BanxColors.textColoursTertiaryTextColour,
    errorBorder: const UnderlineInputBorder(
      borderSide:
          BorderSide(style: BorderStyle.solid, color: BanxColors.error70),
    ),
  );
}
