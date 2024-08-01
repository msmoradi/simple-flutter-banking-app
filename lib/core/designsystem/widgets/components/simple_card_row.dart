import 'package:banx/core/designsystem/widgets/components/simple_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleCardRow extends StatelessWidget {
  const SimpleCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SimpleCard(
              imagePath: 'assets/images/mask.png',
              title: 'بازدهی سرمایه شما',
              subtitle: '٪۲۴ روز شمار'),
        ),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: SimpleCard(
              imagePath: 'assets/images/rocket.png',
              title: 'درآمد شما تا کنون',
              subtitle: '۳٬۵۴۰٬۰۰۰+ تومان'),
        ),
      ],
    );
  }
}
