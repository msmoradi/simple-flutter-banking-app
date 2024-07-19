import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrimaryFillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData? icon;
  final bool isLoading;
  final bool fillWidth;

  const PrimaryFillButton({
    super.key,
    this.onPressed,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.fillWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillWidth ? Size.infinite.width : null,
      child: isLoading
          ? FilledButton(
              onPressed: () {},
              child: SpinKitThreeBounce(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                size: 30.0,
              ),
            )
          : icon != null
              ? FilledButton.icon(
                  onPressed: onPressed,
                  icon: Icon(icon),
                  label: Text(label),
                )
              : FilledButton(
                  onPressed: onPressed,
                  child: Text(label),
                ),
    );
  }
}
