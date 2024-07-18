import 'package:flutter/material.dart';

class DeliveryCardTimes extends StatefulWidget {
  @override
  _DeliveryCardTimesState createState() => _DeliveryCardTimesState();
}

class _DeliveryCardTimesState extends State<DeliveryCardTimes> {
  int _selectedTime = 1;

  void _onRadioSelected(int value) {
    setState(() {
      _selectedTime = value;
    });
  }

  Widget _buildRadioRow(int value, String text) {
    return InkWell(
      onTap: () => _onRadioSelected(value),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(text)),
          SizedBox(width: 10),
          Radio<int>(
            value: value,
            groupValue: _selectedTime,
            onChanged: (int? value) {
              setState(() {
                _selectedTime = value!;
              });
            },
            activeColor: Colors.brown,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildRadioRow(1, 'شنبه، ۸ اردیبهشت - ۹ الی ۱۵'),
          Divider(),
          _buildRadioRow(2, 'شنبه، ۸ اردیبهشت - ۱۵ الی ۲۱'),
          Divider(),
          _buildRadioRow(3, 'یکشنبه، ۹ اردیبهشت - ۹ الی ۱۵'),
          Divider(),
          _buildRadioRow(4, 'یکشنبه، ۹ اردیبهشت - ۱۵ الی ۲۱'),
        ],
      ),
    );
  }
}
