import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrimaryFillButton extends StatefulWidget {
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
  State<PrimaryFillButton> createState() => _PrimaryFillButtonState();
}

class _PrimaryFillButtonState extends State<PrimaryFillButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.fillWidth ? Size.infinite.width : null,
      child: widget.isLoading
          ? FilledButton(
              onPressed: () {},
              child: const SpinKitThreeBounce(
                color: Colors.white,
                size: 30.0,
              ),
            )
          : widget.icon != null
              ? FilledButton.icon(
                  onPressed: widget.onPressed,
                  icon: Icon(widget.icon),
                  label: Text(widget.label),
                )
              : FilledButton(
                  onPressed: widget.onPressed,
                  child: Text(widget.label),
                ),
    );
  }
}
