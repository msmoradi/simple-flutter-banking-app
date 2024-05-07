import 'package:flutter/material.dart';

class CustomBottomNavBarItem {
  final Widget title;
  final Widget activeIcon;
  final Widget inactiveIcon;

  CustomBottomNavBarItem(
      {required this.activeIcon,
      required this.inactiveIcon,
      required this.title});
}
