import 'package:datepicker/flutter_datepicker.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/widgets.dart';

class DatePickerBottomSheet extends StatelessWidget {
  final Function(String date) onPressed;
  final String initialDate;

  const DatePickerBottomSheet(
      {super.key, required this.onPressed, this.initialDate = ''});

  @override
  Widget build(BuildContext context) {
    String value = "";
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearDatePicker(
            isJalaali: true,
            initialDate: initialDate,
            showLabels: true,
            dateChangeListener: (date) {
              value = date;
            },
          ),
          const SizedBox(height: 16.0),
          PrimaryFillButton(
            label: 'تأیید تاریخ',
            onPressed: () {
              onPressed(value.isEmpty ? initialDate : value);
            },
          )
        ],
      ),
    );
  }
}
