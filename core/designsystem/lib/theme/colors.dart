import 'package:flutter/material.dart';

class BanxColors {
  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);
  static const secondaryTextColour = Color(0xff3c3c3c);
  static const primaryTextColor = Color(0xff0a0a0a);
  static const textColoursTertiaryTextColour = Color(0xff878787);
  static const textColoursDarkModePrimaryText = neutral95;
  static const textColoursDarkModeSecondaryText = Color(0xffc4c7c5);
  static const textColoursDarkModeTertiaryText = Color(0xff878787);
  static const darkModeUiElements = Color(0xff262626);
  static const darkModeDarkModeBg = Color(0xff0d0d0d);
  static const primary20 = Color(0xff003730);
  static const primary30 = Color(0xff005046);
  static const primary40 = Color(0xff006b5e);
  static const primary50 = Color(0xff008677);
  static const primary60 = Color(0xff00a693);
  static const primary70 = Color(0xff30bfaa);
  static const primary98 = Color(0xffe5fff8);
  static const error10 = Color(0xff410002);
  static const error20 = Color(0xff690005);
  static const error30 = Color(0xff93000a);
  static const error40 = Color(0xffba1a1a);
  static const error70 = Color(0xffff897d);
  static const error80 = Color(0xffffb4ab);
  static const error90 = Color(0xffffdad6);
  static const neutral0 = Color(0xff000000);
  static const neutral20 = Color(0xff2d3130);
  static const neutral30 = Color(0xff444746);
  static const neutral40 = Color(0xff5c5f5e);
  static const neutral50 = Color(0xff747876);
  static const neutral10 = Color(0xff191c1b);
  static const neutral60 = Color(0xff8e9190);
  static const neutral70 = Color(0xffa9acaa);
  static const neutral80 = Color(0xffc4c7c5);
  static const neutral90 = Color(0xffe0e3e1);
  static const neutral95 = Color(0xffeff1ef);
  static const neutral99 = Color(0xfffafdfa);
  static const neutral25 = Color(0xff383c3b);
  static const neutral35 = Color(0xff505352);
  static const neutral98 = Color(0xfff7faf8);
  static const neutral5 = Color(0xff0f120f);
  static const neutral15 = Color(0xff242623);
  static const onPrimaryOpacity8 = Color(0x14003730);
  static const onPrimaryOpacity12 = Color(0x1f003730);
  static const onPrimaryOpacity16 = Color(0x29003730);
  static const surfaceTintOpacity8 = Color(0x14006b5e);
  static const surfaceTintOpacity12 = Color(0x1f006b5e);
  static const surfaceTintOpacity16 = Color(0x29006b5e);
  static const primaryContainerOpacity8 = Color(0x14005046);
  static const primaryContainerOpacity12 = Color(0x1f005046);
  static const primaryContainerOpacity16 = Color(0x29005046);
  static const lightSurface = neutral95;
  static const darkSurface = Color(0xff191c1b);

  static const ColorScheme lightDynamic = ColorScheme.light(
      primary: BanxColors.primary40,
      onPrimary: BanxColors.white,
      onSecondary: BanxColors.secondaryTextColour,
      onSecondaryContainer: BanxColors.white,
      onTertiary: BanxColors.textColoursTertiaryTextColour,
      error: BanxColors.error40,
      onError: BanxColors.white,
      background: BanxColors.white,
      onBackground: BanxColors.primaryTextColor,
      surface: BanxColors.lightSurface,
      onSurface: BanxColors.primary40,
      surfaceVariant: BanxColors.neutral90,
      onSurfaceVariant: BanxColors.neutral30,
      outline: BanxColors.neutral50);

  static const ColorScheme darkDynamic = ColorScheme.dark(
      primary: BanxColors.primary60,
      onPrimary: BanxColors.white,
      onSecondary: BanxColors.textColoursDarkModeSecondaryText,
      onSecondaryContainer: BanxColors.textColoursDarkModeSecondaryText,
      onTertiary: BanxColors.textColoursDarkModeTertiaryText,
      error: BanxColors.error70,
      onError: BanxColors.error20,
      background: BanxColors.darkModeDarkModeBg,
      onBackground: BanxColors.textColoursDarkModePrimaryText,
      surface: BanxColors.darkSurface,
      onSurface: BanxColors.white,
      surfaceVariant: BanxColors.neutral20,
      onSurfaceVariant: BanxColors.neutral80,
      outline: BanxColors.neutral60);
}
