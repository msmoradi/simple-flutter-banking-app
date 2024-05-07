import 'package:designsystem/theme/button_const.dart';
import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class BanxFilledButtonTheme {
  static FilledButtonThemeData lightFilledButtonThemeData =
      FilledButtonThemeData(
    style: FilledButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius)),
        fixedSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
        backgroundColor: BanxColors.primary40,
        disabledBackgroundColor: BanxColors.neutral80,
        foregroundColor: BanxColors.white,
        disabledForegroundColor: BanxColors.textColoursTertiaryTextColour,
        textStyle: TextStyles.h6),
  );

  static FilledButtonThemeData darkFilledButtonThemeData =
      FilledButtonThemeData(
    style: FilledButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius)),
        fixedSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
        backgroundColor: BanxColors.primary40,
        disabledBackgroundColor: BanxColors.neutral15,
        foregroundColor: BanxColors.neutral95,
        disabledForegroundColor: BanxColors.neutral60,
        textStyle: TextStyles.h6),
  );
}
