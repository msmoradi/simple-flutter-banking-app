import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DepositBottomSheetContent extends StatelessWidget {
  final DropdownChipType initialType;
  final ValueChanged<DropdownChipType> onTypeSelected;

  const DepositBottomSheetContent({
    super.key,
    required this.initialType,
    required this.onTypeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'مبدأ انتقال',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          itemCount: DropdownChipType.values.length,
          itemBuilder: (context, index) {
            final type = DropdownChipType.values[index];
            return InkWell(
              onTap: () {
                onTypeSelected(type);
                HapticFeedback.selectionClick();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Image.asset(
                          type.iconPath,
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 16),
                        Text(type.title,
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    ),
                    Icon(
                      type == initialType
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
