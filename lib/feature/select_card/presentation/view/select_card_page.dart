import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/card/credit_card.dart';
import 'package:banx/core/designsystem/widgets/components/card_personalization_bottom_sheet.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/select_card/presentation/bloc/select_card_bloc.dart';
import 'package:banx/feature/select_card/presentation/bloc/select_card_state.dart';
import 'package:banx/feature/select_card/presentation/view/select_card_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SelectCardPage extends StatelessWidget {
  final Function(int) onCheckPostalCode;
  final Function(List<AddressEntity>, int) onSelectAddress;
  final Function(String) showMessage;

  const SelectCardPage({
    super.key,
    required this.onCheckPostalCode,
    required this.onSelectAddress,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<SelectCardBloc>(),
      child: BlocConsumer<SelectCardBloc, SelectCardState>(
        listener: (context, state) {
          state.whenOrNull(
            selectCardFailure: (message) => showMessage(message),
            checkPostalCode: (cardTypeId) => onCheckPostalCode(cardTypeId),
            selectAddress: (addressList, cardTypeId) =>
                onSelectAddress(addressList, cardTypeId),
          );
        },
        builder: (context, state) {
          return SelectCardContent(
            showLoading: state is SelectCardInProgress,
            onActionClick: () {
              context.read<SelectCardBloc>().add(ActionClick());
            },
            showMessage: showMessage,
            firstName: "firstName",
            lastName: "lastName",
            title: state.maybeWhen(
              selectCardSuccess: (_, title, __, ___, ____) => title,
              orElse: () => "",
            ),
            description: state.maybeWhen(
              selectCardSuccess: (_, __, description, ___, ____) => description,
              orElse: () => "",
            ),
            priceLabel: state.maybeWhen(
              selectCardSuccess: (_, __, ___, priceLabel, ____) => priceLabel,
              orElse: () => "",
            ),
          );
        },
      ),
    );
  }
}
