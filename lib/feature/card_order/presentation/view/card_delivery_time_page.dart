import 'package:banx/feature/card_order/presentation/view/card_delivery_time_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/card_order_bloc.dart';

class CardDeliveryTimePage extends StatelessWidget {
  final Function() onNext;
  final Function() onEditAddress;
  final Function(String) showMessage;

  const CardDeliveryTimePage({
    super.key,
    required this.onNext,
    required this.onEditAddress,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CardOrderBloc>(),
      child: BlocConsumer<CardOrderBloc, CardOrderState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CardDeliveryTimeContent(
            state: state,
            onNext: onNext,
            onEditAddress: onEditAddress,
          );
        },
      ),
    );
  }
}
