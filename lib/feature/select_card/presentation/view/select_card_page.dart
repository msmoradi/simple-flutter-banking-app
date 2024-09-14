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
          if (state.status == SelectCardStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == SelectCardStatus.checkPostalCode) {
            onCheckPostalCode(state.cardTypeId);
          } else if (state.status == SelectCardStatus.selectAddress) {
            onSelectAddress(state.addressList, state.cardTypeId);
          }
        },
        builder: (context, state) {
          return SelectCardContent(
            showLoading: state.status == SelectCardStatus.pageLoading,
            buttonLoading: state.status == SelectCardStatus.buttonLoading,
            onActionClick: () {
              context
                  .read<SelectCardBloc>()
                  .add(ActionClick(cardTypeId: state.cardTypeId));
            },
            showMessage: showMessage,
            firstName: "firstName",
            lastName: "lastName",
            title: state.title,
            description: state.description,
            priceLabel: state.priceLabel,
          );
        },
      ),
    );
  }
}
