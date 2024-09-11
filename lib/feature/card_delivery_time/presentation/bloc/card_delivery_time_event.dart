part of 'card_delivery_time_bloc.dart';

abstract class CardDeliveryTimeEvent extends Equatable {
  const CardDeliveryTimeEvent();

  @override
  List<Object> get props => [];
}

class CardDeliveryTimeSubmitted extends CardDeliveryTimeEvent {
  const CardDeliveryTimeSubmitted();

  @override
  List<Object> get props => [];
}
