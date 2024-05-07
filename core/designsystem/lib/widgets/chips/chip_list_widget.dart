import 'package:collection/collection.dart';
import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class ChipListWidget extends StatefulWidget {
  final List<String> chips;
  final Function(String)? onItemTapped;

  const ChipListWidget({super.key, required this.chips, this.onItemTapped});

  @override
  State<ChipListWidget> createState() => _ChipListWidgetState();
}

class _ChipListWidgetState extends State<ChipListWidget> {
  int? _value;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16.0),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: widget.chips
              .mapIndexed((index, value) => Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: RawChip(
                      showCheckmark: false,
                      label: Text(widget.chips[index]),
                      labelStyle: TextStyles.h6.copyWith(
                          color: _value == index
                              ? BanxColors.white
                              : Theme.of(context).colorScheme.onBackground),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      selectedColor: Theme.of(context).colorScheme.primary,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      selected: _value == index,
                      onSelected: (bool selected) {
                        widget.onItemTapped?.call(widget.chips[index]);
                        setState(() {
                          _value = selected ? index : null;
                        });
                      },
                    ),
                  ))
              .toList()),
    );
  }
}
