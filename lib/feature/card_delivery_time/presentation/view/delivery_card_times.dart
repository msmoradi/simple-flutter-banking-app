import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:flutter/material.dart';

class DeliveryCardTimes extends StatefulWidget {
  final List<ShippingTimeEntity> cardShippingTimeSlots;
  final Function(int) onItemSelected;

  const DeliveryCardTimes({
    super.key,
    required this.cardShippingTimeSlots,
    required this.onItemSelected,
  });

  @override
  _DeliveryCardTimesState createState() => _DeliveryCardTimesState();
}

class _DeliveryCardTimesState extends State<DeliveryCardTimes> {
  int? _selectedTime;

  void _onRadioSelected(int value) {
    setState(() {
      _selectedTime = value;
    });
    widget.onItemSelected(value);
  }

  Widget _buildRadioRow(
      {required ShippingTimeEntity timeSlot, required bool needDivider}) {
    return InkWell(
      onTap: () => _onRadioSelected(timeSlot.id),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(child: Text(timeSlot.datetime)),
              const SizedBox(width: 10),
              Radio<int>(
                value: timeSlot.id,
                groupValue:
                    _selectedTime ?? widget.cardShippingTimeSlots.first.id,
                onChanged: (int? value) {
                  setState(() {
                    _selectedTime = value!;
                  });
                },
                activeColor: Colors.brown,
              ),
            ],
          ),
          if (needDivider) const Divider(),
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
        children: List.generate(widget.cardShippingTimeSlots.length, (index) {
          final timeSlot = widget.cardShippingTimeSlots[index];
          return _buildRadioRow(
            timeSlot: timeSlot,
            needDivider: index != widget.cardShippingTimeSlots.length - 1,
          );
        }),
      ),
    );
  }
}
