import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/add_address/presentation/view/add_address_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/add_address_bloc.dart';

class AddAddressPage extends StatelessWidget {
  final Function(AddressEntity) addressSelected;
  final Function(String) showMessage;
  final AddressEntity address;

  const AddAddressPage({
    super.key,
    required this.addressSelected,
    required this.showMessage,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<AddAddressBloc>(),
      child: BlocConsumer<AddAddressBloc, AddAddressState>(
        listener: (context, state) {
          if (state is AddAddressFailure) {
            showMessage(state.message);
          } else if (state is AddressSelected) {
            addressSelected(state.address);
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
