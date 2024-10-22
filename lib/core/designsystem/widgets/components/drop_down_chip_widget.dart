import 'package:banx/core/designsystem/widgets/bottomsheet/deposit_bottom_sheet_content.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum DropdownChipType {
  rialDeposit(
      title: 'سپرده ریالء',
      iconPath: 'assets/images/lite-coin-1.png',
      unit: 'ریالء'),
  dollarDeposit(
      title: 'سپرده دلار',
      iconPath: 'assets/images/lite-coin-2.png',
      unit: 'دلار'),
  goldDeposit(
      title: 'سپرده طلا',
      iconPath: 'assets/images/lite-coin-3.png',
      unit: 'گرم'),
  diamondDeposit(
      title: 'سپرده الماس',
      iconPath: 'assets/images/lite-coin-4.png',
      unit: 'گرم');

  final String title;
  final String unit;
  final String iconPath;

  const DropdownChipType(
      {required this.title, required this.iconPath, required this.unit});
}

class DropdownChipWidget extends StatelessWidget {
  final DropdownChipType type;

  const DropdownChipWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showModalBottomSheet<DropdownChipType>(
          showDragHandle: true,
          context: context,
          builder: (BuildContext context) {
            return DepositBottomSheetContent(
              initialType: type,
              onTypeSelected: (type) {
                Navigator.pop(context, type);
              },
            );
          },
        );
        if (result != null) {
          context.read<TransactionBloc>().add(SelectTypeEvent(result));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: Theme.of(context).colorScheme.surfaceContainer),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circular Image
            SvgPicture.asset(
              width: 16,
              height: 16,
              'assets/icons/chevron-down.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.surfaceTint,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              type.title,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.surfaceTint),
            ),
            const SizedBox(width: 8),
            Image.asset(
              width: 24,
              height: 24,
              type.iconPath,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
