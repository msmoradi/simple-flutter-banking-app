import 'package:card_order/presentation/view/map_address_content.dart';
import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';

import '../bloc/card_order_bloc.dart';

class MapAddressPage extends StatelessWidget {
  final Function() onNext;

  const MapAddressPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginBloc,
      child: BlocConsumer<CardOrderBloc, CardOrderState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MapAddressContent(
            state: state,
            onNext: onNext,
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
