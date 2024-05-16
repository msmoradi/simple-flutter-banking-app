import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

class BanxInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: BanxColors.white,
    isDense: true,
    hintStyle: TextStyles.bodyTextBody1
        .copyWith(color: BanxColors.textColoursTertiaryTextColour),
    border: OutlineInputBorder(),
  );
}
