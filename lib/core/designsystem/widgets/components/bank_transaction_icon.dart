import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankTransactionIcon extends StatelessWidget {
  final bool isInput;

  const BankTransactionIcon({
    super.key,
    required this.isInput,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: isInput
          ? Theme.of(context).colorScheme.onTertiaryContainer
          : Theme.of(context).colorScheme.surfaceContainerHigh,
      child: SvgPicture.asset(
        isInput
            ? 'assets/icons/arrow-circle-down-left.svg'
            : 'assets/icons/arrow-circle-up-right.svg',
        colorFilter: ColorFilter.mode(
          isInput
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSurfaceVariant,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}

enum TransactionType {
  rialDeposit(
    iconPath: 'assets/images/lite-coin-2.png',
  ),
  dollarDeposit(
    iconPath: 'assets/images/lite-coin-3.png',
  ),
  goldDeposit(
    iconPath: 'assets/images/lite-coin-1.png',
  ),
  diamondDeposit(
    iconPath: 'assets/images/lite-coin-4.png',
  );

  final String iconPath;

  const TransactionType({required this.iconPath});
}

class TransactionModel {
  final bool isInput;
  final String title;
  final String subtitle;
  final String amount;

  TransactionModel(
      {required this.title,
      required this.isInput,
      required this.subtitle,
      required this.amount});
}
