import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrimaryFillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
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
    final content = AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (child, animation) =>
            ScaleTransition(scale: animation, child: child),
        child: isLoading
            ? SpinKitThreeBounce(
                color: Theme.of(context).colorScheme.onPrimary,
                size: 30.0,
              )
            : Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ));
    return SizedBox(
      width: fillWidth ? Size.infinite.width : null,
      child: icon != null
          ? FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primary, // This is what you need!
              ),
              onPressed: isLoading ? null : onPressed,
              icon: isLoading ? null : icon,
              label: content,
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primary, // This is what you need!
              ),
              onPressed: isLoading ? null : onPressed,
              child: content,
            ),
    );
  }
}
