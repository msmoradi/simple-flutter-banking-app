import 'package:card_order/presentation/view/card_delivery_time_content.dart';
import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';

import '../bloc/card_order_bloc.dart';

class CardDeliveryTimePage extends StatelessWidget {
  final Function() onNext;
  final Function() onEditAddress;

  const CardDeliveryTimePage({
    super.key,
    required this.onNext,
    required this.onEditAddress,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginBloc,
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

CardOrderBloc get loginBloc => CardOrderBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
