part of 'card_activation_bloc.dart';

abstract class CardActivationEvent extends Equatable {
  const CardActivationEvent();

  @override
  List<Object> get props => [];
}

class CardActivationSubmitted extends CardActivationEvent {
  final String CardActivationNumber;

  const CardActivationSubmitted(this.CardActivationNumber);

  @override
  List<Object> get props => [CardActivationNumber];
}
