import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrimaryFillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData? icon;
  final bool isLoading;
  final bool fillWidth;

  const PrimaryFillButton({
    Key? key,
    this.onPressed,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.fillWidth = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fillWidth ? Size.infinite.width : null,
      child: isLoading
          ? FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primaryContainer, // This is what you need!
              ),
              onPressed: () {},
              child: SpinKitThreeBounce(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                size: 30.0,
              ),
            )
          : icon != null
              ? FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .primaryContainer, // This is what you need!
                  ),
                  onPressed: onPressed,
                  icon: Icon(icon),
                  label: Text(label),
                )
              : FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .primaryContainer, // This is what you need!
                  ),
                  onPressed: onPressed,
                  child: Text(label),
                ),
    );
  }
}
