import 'dart:ui' show lerpDouble;

import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/widgets/bottombar/custom_bottom_nav_bar_item.dart';
import 'package:designsystem/widgets/bottombar/item_indicator.dart';
import 'package:flutter/material.dart';

const double defaultNavBarHeight = 56;
const double defaultIndicatorHeight = 2;
const defaultActiveColor = BanxColors.white;
const defaultInactiveColor = BanxColors.white;
const defaultShadow = BoxShadow(color: Colors.black12, blurRadius: 1);

class CustomBottomNavBar extends StatefulWidget {
  final Color backgroundColor;
  final Curve curve;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? inactiveStripColor;
  final Color indicatorColor;
  final bool enableShadow;
  final BoxShadow shadow;
  final ValueChanged<int> onTap;
  final List<CustomBottomNavBarItem> items;
  final double indicatorHeight;
  final double height;

  const CustomBottomNavBar({
    Key? key,
    this.backgroundColor = BanxColors.primary40,
    this.curve = Curves.fastOutSlowIn,
    required this.onTap,
    required this.items,
    this.activeColor = defaultActiveColor,
    this.inactiveColor = defaultInactiveColor,
    this.inactiveStripColor,
    this.indicatorColor = defaultActiveColor,
    this.enableShadow = true,
    this.shadow = defaultShadow,
    this.height = defaultNavBarHeight,
    this.indicatorHeight = defaultIndicatorHeight,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  @override
  State createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  Curve get curve => widget.curve;
  int currentIndex = 0;

  List<CustomBottomNavBarItem> get items => widget.items;

  double width = 0;
  Duration duration = const Duration(milliseconds: 200);

  double _getIndicatorPosition(int index) {
    var isLtr = Directionality.of(context) == TextDirection.ltr;
    if (isLtr) {
      return lerpDouble(-1.0, 1.0, index / (items.length - 1))!;
    } else {
      return lerpDouble(1.0, -1.0, index / (items.length - 1))!;
    }
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return Container(
      height: widget.height + MediaQuery.of(context).viewPadding.bottom,
      width: width,
      decoration: BoxDecoration(
        color: widget.inactiveStripColor ?? widget.backgroundColor,
        boxShadow: widget.enableShadow ? [widget.shadow] : null,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: widget.indicatorHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: items.map((item) {
                var index = items.indexOf(item);
                return GestureDetector(
                  onTap: () => _selectItemAt(index),
                  child: _buildItemWidget(item, index == currentIndex),
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: 0,
            width: width,
            child: AnimatedAlign(
              alignment: Alignment(_getIndicatorPosition(currentIndex), 0),
              curve: curve,
              duration: duration,
              child: ItemIndicator(
                  width: (width / items.length),
                  height: widget.indicatorHeight,
                  color: widget.indicatorColor),
            ),
          ),
        ],
      ),
    );
  }

  void _selectItemAt(int index) {
    currentIndex = index;
    widget.onTap(currentIndex);
  }

  Widget _buildTextAndIcon(CustomBottomNavBarItem item, bool isSelected) {
    return SizedBox(
      height: widget.height,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconTheme(
          data: IconThemeData(
            color: isSelected ? widget.activeColor : widget.inactiveColor,
          ),
          child: isSelected ? item.activeIcon : item.inactiveIcon,
        ),
        const SizedBox(height: 2),
        DefaultTextStyle.merge(
          child: item.title,
          style: TextStyle(
              color: isSelected ? widget.activeColor : widget.inactiveColor,
              fontSize: 12,
              letterSpacing: 0.4),
        )
      ]),
    );
  }

  Widget _buildItemWidget(CustomBottomNavBarItem item, bool isSelected) {
    return Container(
        color: widget.backgroundColor,
        height: widget.height,
        width: width / items.length,
        child: _buildTextAndIcon(item, isSelected));
  }
}
