
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:banx/core/data/repository/authentication_repository_impl.dart';
import 'package:banx/core/data/repository/token_repository_impl.dart';
import 'package:banx/core/networking/api_service.dart';
import 'package:banx/feature/card_order/presentation/view/card_delivery_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/card_order_bloc.dart';

class CardDeliveryPage extends StatelessWidget {
  final Function() onAddAddress;

  const CardDeliveryPage({
    super.key,
    required this.onAddAddress,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginBloc,
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

CardOrderBloc get loginBloc => CardOrderBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
