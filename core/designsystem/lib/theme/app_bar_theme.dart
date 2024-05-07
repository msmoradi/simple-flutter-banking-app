import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

class BanxAppBarTheme {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: BanxColors.white,
    centerTitle: true,
    titleTextStyle:
        TextStyles.h6.copyWith(color: BanxColors.primaryTextColor),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: BanxColors.darkModeDarkModeBg,
    centerTitle: true,
    titleTextStyle: TextStyles.h6
        .copyWith(color: BanxColors.textColoursDarkModePrimaryText),
  );
}
