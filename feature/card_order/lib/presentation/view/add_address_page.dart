import 'package:card_order/presentation/view/add_address_content.dart';
import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';

import '../bloc/card_order_bloc.dart';

class AddAddressPage extends StatelessWidget {
  final Function() onAddAddress;

  const AddAddressPage({
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
          return AddAddressContent(
            state: state,
          );
        },
      ),
    );
  }
}

CardOrderBloc get loginBloc => CardOrderBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        authenticationRemoteDataSource:
            AuthenticationRemoteDataSourceImpl(ApiService()),
      ),
    );
