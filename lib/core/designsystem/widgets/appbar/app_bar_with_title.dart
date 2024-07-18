import 'package:flutter/material.dart';

class AppBarWithTitle extends StatelessWidget {
  final String title;

  const AppBarWithTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          title,
        ),
      ),
    );
  }
}
