import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class BirthDateBottomSheet extends StatelessWidget {
  final Function(String address) onConfirmPressed;
  final Function() onCancelPressed;
  final TextEditingController birthdayController;

  const BirthDateBottomSheet({
    super.key,
    required this.onConfirmPressed,
    required this.onCancelPressed,
    required this.birthdayController,
  });

  Jalali jalaliFromString(String x) {
    List<String> parts = x.split('/');
    int year = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int day = int.parse(parts[2]);
    return Jalali(year, month, day);
  }

  @override
  Widget build(BuildContext context) {
    Jalali? tempPickedDate;
    Jalali initialDateTime = birthdayController.text.isEmpty
        ? Jalali(1375, 4)
        : jalaliFromString(birthdayController.text);
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          child: Text(
                            'تایید',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          onPressed: () {
                            Jalali jalaliDate =
                                tempPickedDate ?? initialDateTime;
                            String formattedDate =
                                '${jalaliDate.year}/${jalaliDate.month}/${jalaliDate.day}';
                            birthdayController.text = formattedDate;
                            onConfirmPressed(formattedDate);
                          },
                        ),
                        CupertinoButton(
                          onPressed: onCancelPressed,
                          child: Text(
                            'لغو',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1,
                  ),
                  Expanded(
                    child: CupertinoTheme(
                      data: CupertinoThemeData(
                        textTheme: CupertinoTextThemeData(
                          primaryColor: Theme.of(context).colorScheme.primary,
                          dateTimePickerTextStyle:
                              Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      child: PCupertinoDatePicker(
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        mode: PCupertinoDatePickerMode.date,
                        initialDateTime: initialDateTime,
                        minimumDate: Jalali(1310, 8),
                        maximumDate: Jalali(1510, 9),
                        onDateTimeChanged: (Jalali dateTime) {
                          tempPickedDate = dateTime;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
