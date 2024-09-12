import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionRow extends StatelessWidget {
  final VoidCallback? actionClick;

  const ActionRow({super.key, this.actionClick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconColumn(Icons.add, 'واریز', context),
          _buildIconColumn(Icons.arrow_downward, 'برداشت', context),
          _buildIconColumn(Icons.swap_horiz, 'انتقال', context),
          _buildIconColumn(Icons.apps, 'بیشتر', context),
        ],
      ),
    );
  }

  Column _buildIconColumn(
      IconData iconData, String label, BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24.0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: IconButton(
            icon: Icon(
              iconData,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 24.0,
            ),
            onPressed: actionClick,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
      ],
    );
  }
}
