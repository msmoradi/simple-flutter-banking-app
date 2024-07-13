import 'package:add_address/presentation/view/add_address_content.dart';
import 'package:data/datasource/remote/profile_remote_datasource_impl.dart';
import 'package:data/repository/profile_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';

import '../bloc/add_address_bloc.dart';

class AddAddressPage extends StatelessWidget {
  final Function() onNext;

  const AddAddressPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => addAddressBloc,
      child: BlocConsumer<AddAddressBloc, AddAddressState>(
        listener: (context, state) {
          if (state is AddAddressFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is AddAddressSuccess) {
            onNext();
          }
        },
        builder: (context, state) {
          return AddAddressContent(
            showLoading: state is AddAddressInProgress,
          );
        },
      ),
    );
  }
}

AddAddressBloc get addAddressBloc => AddAddressBloc(
      profileRepository: ProfileRepositoryImpl(
        profileRemoteDataSource: ProfileRemoteDataSourceImpl(ApiService()),
      ),
    );
