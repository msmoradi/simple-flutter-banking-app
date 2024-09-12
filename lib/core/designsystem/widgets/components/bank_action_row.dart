import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankActionRow extends StatelessWidget {
  final Function() actionClick;

  const BankActionRow({super.key, required this.actionClick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconColumn('assets/icons/plus.svg', 'افزایش موجودی', context),
          _buildIconColumn('assets/icons/exchange.svg', 'انتقال وجه', context),
          _buildIconColumn('assets/icons/lock.svg', 'رمز کارت', context),
          _buildIconColumn('assets/icons/grid.svg', 'بیشتر', context),
        ],
      ),
    );
  }

  Column _buildIconColumn(
      String iconAsset, String label, BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24.0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: IconButton(
            icon: SvgPicture.asset(
              iconAsset,
              width: 24.0,
              height: 24.0,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onPrimary,
                BlendMode.srcIn,
              ),
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
