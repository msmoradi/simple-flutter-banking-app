import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/select_address/presentation/bloc/select_address_bloc.dart';
import 'package:banx/feature/select_address/presentation/view/select_address_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SelectAddressPage extends StatelessWidget {
  final Function() onAddAddress;
  final Function(String) showMessage;
  final List<AddressEntity> addressList;

  const SelectAddressPage({
    super.key,
    required this.onAddAddress,
    required this.showMessage,
    required this.addressList,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<SelectAddressBloc>(),
      child: BlocConsumer<SelectAddressBloc, SelectAddressState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SelectAddressContent(
            showLoading: state is SelectAddressInProgress,
            onAddAddress: onAddAddress,
            addressList: addressList,
          );
        },
      ),
    );
  }
}
