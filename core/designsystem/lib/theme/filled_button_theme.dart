import 'package:designsystem/theme/button_const.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class BanxFilledButtonTheme {
  static FilledButtonThemeData filledButtonThemeData = FilledButtonThemeData(
    style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius)),
        fixedSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
        textStyle: TextStyles.h6),
  );
}
