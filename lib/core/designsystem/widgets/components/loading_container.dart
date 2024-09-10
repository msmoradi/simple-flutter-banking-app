import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingContainer extends StatelessWidget {
  final bool showLoading;
  final Widget content;

  const LoadingContainer(
      {super.key, required this.showLoading, required this.content});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) =>
          ScaleTransition(scale: animation, child: child),
      child: showLoading
          ? Center(
              child: LoadingAnimationWidget.threeRotatingDots(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                size: 70.0,
              ),
            )
          : content,
    );
  }
}
