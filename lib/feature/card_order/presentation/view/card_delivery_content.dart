import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/address_row.dart';
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart';
import 'package:flutter/material.dart';

class CardDeliveryContent extends StatelessWidget {
  final CardOrderState state;
  final Function() onAddAddress;

  CardDeliveryContent(
      {super.key, required this.state, required this.onAddAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          'تحویل کارت',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Image.asset(
                'assets/images/card-banner.png',
                height: 80,
                width: 361,
              ),
              SizedBox(height: 30.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'آدرس دریافت کارت خود را انتخاب کنید',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  AddressRow(
                      address:
                          'شهر تهران، محله اکباتان، خیابان .شکوری غربی، بلوار شهید عبدالرحمان نفیسی ، فازیک بلوک A5، پلاک 0، طبقه 9، واحد 458'),
                ],
              ),
              Spacer(),
              PrimaryFillButton(
                onPressed: onAddAddress,
                icon: Icons.add_rounded,
                label: 'آدرس جدید',
                isLoading: state is CardOrderInProgress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
