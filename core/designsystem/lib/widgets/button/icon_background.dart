import 'package:designsystem/theme/colors.dart';
import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  final Widget child;
  final Function()? onTapped;

  const IconBackground({super.key, required this.child, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: BanxColors.black.withOpacity(0.3)),
        height: 30,
        width: 30,
        child: Center(child: child),
      ),
    );
  }
}
