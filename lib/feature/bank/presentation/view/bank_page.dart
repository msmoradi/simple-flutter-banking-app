import 'package:banx/core/domain/entities/card_delivery_entity.dart';
import 'package:banx/feature/bank/presentation/bloc/bank_bloc.dart';
import 'package:banx/feature/bank/presentation/view/bank_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BankPage extends StatelessWidget {
  const BankPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<BankBloc>(),
      child: BlocBuilder<BankBloc, BankState>(
        builder: (context, state) {
          return BankContent(
            showCardDeliveryButton: true,
            cardDeliveryActionTitle: 'پیگیری مرسوله',
            cardDeliveryActionAssetPath: 'assets/icons/delivery-fast.svg',
            onCardDeliveryActionClick: () {},
            cardDeliveryEntity: CardDeliveryEntity(
              cardOrder: CardDeliveryStatusEntity(
                title: 'سفارش کارت',
                subtitle: '۲۹ فروردین',
                isPassed: true,
              ),
              cardIssuance: CardDeliveryStatusEntity(
                title: 'صدور کارت',
                subtitle: '۱ اردیبهشت',
                isPassed: true,
              ),
              cardDelivery: CardDeliveryStatusEntity(
                title: 'تحویل کارت',
                subtitle: '۳ تا ۵ اردیبهشت',
                isPassed: false,
              ),
            ),
          );
        },
      ),
    );
  }
}
