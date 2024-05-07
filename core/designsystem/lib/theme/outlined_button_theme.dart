import 'package:designsystem/theme/button_const.dart';
import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class BanxOutlinedButtonTheme {
  static OutlinedButtonThemeData lightOutlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: FilledButton.styleFrom(
        side: const BorderSide(
            width: BanxButtonConst.borderSideWidth,
            color: BanxColors.neutral50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius),
        ),
        minimumSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
        backgroundColor: BanxColors.white,
        disabledBackgroundColor: BanxColors.white,
        foregroundColor: BanxColors.primary40,
        disabledForegroundColor: BanxColors.neutral60,
        textStyle: TextStyles.h6),
  );

  static OutlinedButtonThemeData darkOutlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: FilledButton.styleFrom(
        side: const BorderSide(
            width: BanxButtonConst.borderSideWidth,
            color: BanxColors.neutral20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius),
        ),
        minimumSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
        backgroundColor: BanxColors.darkModeDarkModeBg,
        disabledBackgroundColor: BanxColors.neutral95,
        foregroundColor: BanxColors.neutral95,
        disabledForegroundColor: BanxColors.neutral60,
        textStyle: TextStyles.h6),
  );
}
