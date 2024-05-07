import 'package:designsystem/theme/app_bar_theme.dart';
import 'package:designsystem/theme/bottom_sheet_theme.dart';
import 'package:designsystem/theme/card_theme.dart';
import 'package:designsystem/theme/filled_button_theme.dart';
import 'package:designsystem/theme/outlined_button_theme.dart';
import 'package:designsystem/theme/text_button_theme.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'input_decoration_theme.dart';

class BanxThemeData {
  static ThemeData lightThemeData = ThemeData(
      inputDecorationTheme:
          BanxInputDecorationTheme.lightInputDecorationTheme,
      colorScheme: BanxColors.lightDynamic,
      cardTheme: BanxCardTheme.lightCardTheme,
      appBarTheme: BanxAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: BanxBottomSheetTheme.lightBottomSheetTheme,
      fontFamily: TextStyles.fontFamilyName,
      useMaterial3: true,
      brightness: Brightness.light,
      filledButtonTheme: BanxFilledButtonTheme.lightFilledButtonThemeData,
      outlinedButtonTheme:
          BanxOutlinedButtonTheme.lightOutlinedButtonThemeData,
      textButtonTheme: BanxTextButtonTheme.lightTextButtonThemeData);

  static ThemeData darkThemeData = ThemeData(
      inputDecorationTheme: BanxInputDecorationTheme.darkInputDecorationTheme,
      fontFamily: TextStyles.fontFamilyName,
      colorScheme: BanxColors.darkDynamic,
      cardTheme: BanxCardTheme.darkCardTheme,
      bottomSheetTheme: BanxBottomSheetTheme.darkBottomSheetTheme,
      useMaterial3: true,
      brightness: Brightness.dark,
      appBarTheme: BanxAppBarTheme.darkAppBarTheme,
      filledButtonTheme: BanxFilledButtonTheme.darkFilledButtonThemeData,
      outlinedButtonTheme:
          BanxOutlinedButtonTheme.darkOutlinedButtonThemeData,
      textButtonTheme: BanxTextButtonTheme.darkTextButtonThemeData);
}
