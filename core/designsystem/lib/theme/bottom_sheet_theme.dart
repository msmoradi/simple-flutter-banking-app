import 'package:flutter/material.dart';

import 'colors.dart';

class BanxBottomSheetTheme {
  static BottomSheetThemeData lightBottomSheetTheme =
      const BottomSheetThemeData(
    backgroundColor: BanxColors.white,
    surfaceTintColor: Colors.transparent,
  );

  static BottomSheetThemeData darkBottomSheetTheme = const BottomSheetThemeData(
    backgroundColor: BanxColors.darkModeDarkModeBg,
    surfaceTintColor: Colors.transparent,
  );
}
