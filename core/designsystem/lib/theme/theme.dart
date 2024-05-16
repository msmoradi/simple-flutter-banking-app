import "package:designsystem/theme/text_styles.dart";
import "package:flutter/material.dart";

import "filled_button_theme.dart";

class BanxTheme {
  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278190080),
      surfaceTint: Color(4284374622),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280690214),
      onPrimaryContainer: Color(4289835441),
      secondary: Color(4282401089),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284769380),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4286535191),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291795798),
      onTertiaryContainer: Color(4280751616),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294572537),
      onBackground: Color(4279966491),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      surfaceVariant: Color(4293648609),
      onSurfaceVariant: Color(4283188550),
      outline: Color(4286477686),
      outlineVariant: Color(4291806405),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inverseOnSurface: Color(4294242543),
      inversePrimary: Color(4291217094),
      primaryFixed: Color(4293059298),
      onPrimaryFixed: Color(4279966491),
      primaryFixedDim: Color(4291217094),
      onPrimaryFixedVariant: Color(4282861383),
      secondaryFixed: Color(4293190370),
      onSecondaryFixed: Color(4279966748),
      secondaryFixedDim: Color(4291348166),
      onSecondaryFixedVariant: Color(4282795847),
      tertiaryFixed: Color(4294958517),
      onTertiaryFixed: Color(4280948736),
      tertiaryFixedDim: Color(4294229364),
      onTertiaryFixedVariant: Color(4284759808),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  static ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4291217094),
      surfaceTint: Color(4291217094),
      onPrimary: Color(4281348144),
      primaryContainer: Color(4278190080),
      onPrimaryContainer: Color(4288059030),
      secondary: Color(4291348166),
      onSecondary: Color(4281348144),
      secondaryContainer: Color(4283124555),
      onSecondaryContainer: Color(4293519335),
      tertiary: Color(4294229364),
      onTertiary: Color(4282788608),
      tertiaryContainer: Color(4290349125),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279440147),
      onBackground: Color(4293059298),
      surface: Color(4279505683),
      onSurface: Color(4293255905),
      surfaceVariant: Color(4283188550),
      onSurfaceVariant: Color(4291806405),
      outline: Color(4288188048),
      outlineVariant: Color(4283188550),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inverseOnSurface: Color(4281413680),
      inversePrimary: Color(4284374622),
      primaryFixed: Color(4293059298),
      onPrimaryFixed: Color(4279966491),
      primaryFixedDim: Color(4291217094),
      onPrimaryFixedVariant: Color(4282861383),
      secondaryFixed: Color(4293190370),
      onSecondaryFixed: Color(4279966748),
      secondaryFixedDim: Color(4291348166),
      onSecondaryFixedVariant: Color(4282795847),
      tertiaryFixed: Color(4294958517),
      onTertiaryFixed: Color(4280948736),
      tertiaryFixedDim: Color(4294229364),
      onTertiaryFixedVariant: Color(4284759808),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676852),
    );
  }

  static ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        fontFamily: TextStyles.fontFamilyName,
        brightness: colorScheme.brightness,
        filledButtonTheme: BanxFilledButtonTheme.filledButtonThemeData,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}
