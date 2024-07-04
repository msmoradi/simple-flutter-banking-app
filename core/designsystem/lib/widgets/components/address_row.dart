import 'package:flutter/material.dart';

class AddressRow extends StatelessWidget {
  final String address;

  const AddressRow({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      Icon(
        size: 24.0,
        Icons.location_on_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
      const SizedBox(width: 16.0),
      Expanded(
        child: Text(
          address,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      const SizedBox(width: 16.0),
      Icon(
        size: 24.0,
        Icons.arrow_forward_ios_rounded,
        color: Theme.of(context).colorScheme.primary,
      ),
    ]);
  }
}
