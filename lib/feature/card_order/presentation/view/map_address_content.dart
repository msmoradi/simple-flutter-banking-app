import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart';
import 'package:flutter/material.dart';

class MapAddressContent extends StatelessWidget {
  final Function() onNext;
  final CardOrderState state;

  const MapAddressContent({super.key, required this.state, required this.onNext});

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
          'آدرس دقیق روی نقشه',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              PrimaryFillButton(
                onPressed: onNext,
                label: 'تأیید آدرس',
                isLoading: state is CardOrderInProgress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
