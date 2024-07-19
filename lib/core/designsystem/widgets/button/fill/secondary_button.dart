import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SecondaryFillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData? icon;
  final bool isLoading;
  final bool fillWidth;

  const SecondaryFillButton({
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
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .secondaryContainer, // This is what you need!
              ),
              onPressed: () {},
              child: SpinKitThreeBounce(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                size: 30.0,
              ),
            )
          : icon != null
              ? FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondaryContainer, // This is what you need!
                  ),
                  onPressed: onPressed,
                  icon: Icon(icon),
                  label: Text(label),
                )
              : FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondaryContainer, // This is what you need!
                  ),
                  onPressed: onPressed,
                  child: Text(label),
                ),
    );
  }
}
