import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class NoDataPage extends StatelessWidget {
  const NoDataPage({
    super.key,
    required this.title,
    required this.description,
    this.button,
  });

  final String title;

  final String description;

  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyles.h1.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyles.bodyTextBody1.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            if (button != null) button!,
          ],
        ),
      ),
    );
  }
}
