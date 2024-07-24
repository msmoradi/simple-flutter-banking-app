import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/address_row.dart';
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart';
import 'package:banx/feature/card_order/presentation/view/delivery_card_times.dart';
import 'package:flutter/material.dart';

class CardDeliveryTimeContent extends StatelessWidget {
  final Function() onNext;
  final Function() onEditAddress;
  final CardOrderState state;

  const CardDeliveryTimeContent({
    super.key,
    required this.state,
    required this.onNext,
    required this.onEditAddress,
  });

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
          'زمان دریافت کارت',
        ),
      ),
      body: Column(
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
                      onEditPressed: onEditAddress,
                      address:
                          'شهر تهران، محله اکباتان، خیابان .شکوری غربی، بلوار شهید عبدالرحمان نفیسی ، فازیک بلوک A5، پلاک 0، طبقه 9، واحد 458',
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
            padding: const EdgeInsets.all(16.0),
            child: PrimaryFillButton(
              onPressed: onNext,
              icon: Icons.thumb_up_outlined,
              label: 'تأیید زمان و مکان دریافت کارت',
              isLoading: state is CardOrderInProgress,
            ),
          ),
        ],
      ),
    );
  }
}
