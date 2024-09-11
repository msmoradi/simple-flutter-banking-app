part of 'card_delivery_time_bloc.dart';

@immutable
abstract class CardDeliveryTimeState extends Equatable {
  const CardDeliveryTimeState();
}

class CardDeliveryTimeFailure extends CardDeliveryTimeState {
  final String message;

  const CardDeliveryTimeFailure(this.message);

  @override
  List<Object?> get props => [];
}

class CardDeliveryTimeInProgress extends CardDeliveryTimeState {
  @override
  List<Object?> get props => [];
}

class DeepLinkLanding extends CardDeliveryTimeState {
  final String deeplink;

  const DeepLinkLanding({required this.deeplink});

  @override
  List<Object> get props => [deeplink];
}

class CardDeliveryTimeValidated extends CardDeliveryTimeState {
  @override
  List<Object?> get props => [];
}
