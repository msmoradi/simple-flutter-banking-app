import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class BanxTextButtonTheme {
  static TextButtonThemeData lightTextButtonThemeData = TextButtonThemeData(
    style: FilledButton.styleFrom(
        foregroundColor: BanxColors.primary40,
        disabledForegroundColor: BanxColors.neutral60,
        textStyle: TextStyles.h6),
  );

  static TextButtonThemeData darkTextButtonThemeData = TextButtonThemeData(
    style: FilledButton.styleFrom(
        foregroundColor: BanxColors.primary60,
        disabledForegroundColor: BanxColors.neutral60,
        textStyle: TextStyles.h6),
  );
}
