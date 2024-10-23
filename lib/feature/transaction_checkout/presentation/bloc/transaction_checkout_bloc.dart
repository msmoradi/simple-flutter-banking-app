import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_checkout/presentation/bloc/transaction_checkout_state.dart';
import 'package:banx/feature/transaction_checkout/presentation/view/transaction_checkout_content.dart';
import 'package:banx/feature/transaction_destination/presentation/bloc/transaction_destination_state.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'transaction_checkout_event.dart';

@injectable
class TransactionCheckoutBloc
    extends Bloc<TransactionCheckoutEvent, TransactionCheckoutState> {
  TransactionCheckoutBloc()
      : super(TransactionCheckoutState(
            destinationUserInfo: UserInfo(
                name: "name", cardNumber: "cardNumber", photoUrl: "photoUrl"),
            sourceUserInfo: UserInfo(
                name: "name", cardNumber: "cardNumber", photoUrl: "photoUrl"),
            status: TransactionCheckoutStatus.loading)) {
    on<DestinationSelectTypeEvent>(_onDestinationSelectTypeEvent);
    on<SourceSelectTypeEvent>(_onSourceSelectTypeEvent);
  }

  void _onDestinationSelectTypeEvent(DestinationSelectTypeEvent event,
      Emitter<TransactionCheckoutState> emit) {
    emit(state.copyWith(destinationDepositType: event.type));
  }

  void _onSourceSelectTypeEvent(
      SourceSelectTypeEvent event, Emitter<TransactionCheckoutState> emit) {
    emit(state.copyWith(sourceDepositType: event.type));
  }
}
