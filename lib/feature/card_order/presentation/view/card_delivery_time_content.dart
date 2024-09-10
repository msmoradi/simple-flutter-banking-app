import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/address_row.dart';
import 'package:banx/core/designsystem/widgets/components/edit_address_bottom_sheet.dart';
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart';
import 'package:banx/feature/card_order/presentation/view/delivery_card_times.dart';
import 'package:flutter/material.dart';

class CardDeliveryTimeContent extends StatefulWidget {
  final Function() onNext;
  final CardOrderState state;
  final String address;

  const CardDeliveryTimeContent({
    super.key,
    required this.state,
    required this.onNext,
    required this.address,
  });

  @override
  State<CardDeliveryTimeContent> createState() =>
      _CardDeliveryTimeContentState();
}

class _CardDeliveryTimeContentState extends State<CardDeliveryTimeContent> {
  String _address = "";

  @override
  void initState() {
    _address = widget.address;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          'زمان دریافت کارت',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    Image.asset(
                      'assets/images/card-banner.png',
                      height: 80,
                      width: 361,
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'آدرس دریافت کارت',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: AddressRow(
                        onEditPressed: () {
                          showModalBottomSheet(
                            enableDrag: false,
                            showDragHandle: true,
                            isScrollControlled: true,
                            useSafeArea: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0)),
                            ),
                            context: context,
                            builder: (context) => EditAddressBottomSheet(
                              addressController:
                                  TextEditingController(text: _address),
                              onButtonPressed: (address) {
                                Navigator.of(context).pop();
                                setState(() {
                                  _address = address;
                                });
                              },
                            ),
                          );
                        },
                        address: _address,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      height: 12,
                      color: Theme.of(context).colorScheme.surfaceVariant,
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'زمان دریافت کارت',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    const DeliveryCardTimes()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PrimaryFillButton(
                onPressed: widget.onNext,
                icon: Icon(Icons.thumb_up_outlined),
                label: 'تأیید زمان و مکان دریافت کارت',
                isLoading: widget.state is CardOrderInProgress,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
