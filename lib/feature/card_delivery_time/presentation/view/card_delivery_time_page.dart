import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/feature/card_delivery_time/presentation/view/card_delivery_time_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/card_delivery_time_bloc.dart';

class CardDeliveryTimePage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;
  final Function(String deeplink) onDeeplinkLanding;
  final AddressEntity address;
  final int cardTypeId;
  final List<ShippingTimeEntity> cardShippingTimeSlots;

  const CardDeliveryTimePage({
    super.key,
    required this.address,
    required this.cardTypeId,
    required this.cardShippingTimeSlots,
    required this.onNext,
    required this.showMessage,
    required this.onDeeplinkLanding,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CardDeliveryTimeBloc>(),
      child: BlocConsumer<CardDeliveryTimeBloc, CardDeliveryTimeState>(
        listener: (context, state) {
          switch (state) {
            case final CardDeliveryTimeFailure s:
              {
                showMessage(s.message);
              }
            case final DeepLinkLanding s:
              {
                onDeeplinkLanding(s.deeplink);
              }
          }
        },
        builder: (context, state) {
          return CardDeliveryTimeContent(
            showLoading: state is CardDeliveryTimeInProgress,
            onActionClick: () {
              context
                  .read<CardDeliveryTimeBloc>()
                  .add(const CardDeliveryTimeSubmitted());
            },
            address: address,
            cardShippingTimeSlots: cardShippingTimeSlots,
          );
        },
      ),
    );
  }
}
