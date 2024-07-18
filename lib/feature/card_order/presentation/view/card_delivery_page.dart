import 'package:banx/feature/card_order/presentation/view/card_delivery_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/card_order_bloc.dart';

class CardDeliveryPage extends StatelessWidget {
  final Function() onAddAddress;
  final Function(String) showMessage;

  const CardDeliveryPage({
    super.key,
    required this.onAddAddress, required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CardOrderBloc>(),
      child: BlocConsumer<CardOrderBloc, CardOrderState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CardDeliveryContent(
            state: state,
            onAddAddress: onAddAddress,
          );
        },
      ),
    );
  }
}
