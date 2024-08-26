part of 'card_order_bloc.dart';

@immutable
abstract class CardOrderState extends Equatable {
  const CardOrderState();
}

class CardOrderFailure extends CardOrderState {
  final String message;

  const CardOrderFailure(this.message);

  @override
  List<Object?> get props => [];
}

class CardOrderInProgress extends CardOrderState {
  @override
  List<Object?> get props => [];
}

class LoadTimes extends CardOrderState {
  @override
  List<Object?> get props => [];
}

class TimeLoaded extends CardOrderState {
  final List<ShippingTimeEntity> cardShippingTimeSlots;

  const TimeLoaded({required this.cardShippingTimeSlots});

  @override
  List<Object?> get props => [];
}

class CardOrderValidated extends CardOrderState {
  @override
  List<Object?> get props => [];
}
