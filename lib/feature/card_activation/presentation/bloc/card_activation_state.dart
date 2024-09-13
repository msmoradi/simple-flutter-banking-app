part of 'card_activation_bloc.dart';

@immutable
abstract class CardActivationState extends Equatable {
  const CardActivationState();
}

class CardActivationFailure extends CardActivationState {
  final String message;

  const CardActivationFailure(this.message);

  @override
  List<Object?> get props => [];
}

class CardActivationInProgress extends CardActivationState {
  @override
  List<Object?> get props => [];
}

class VerifyOtpSuccess extends CardActivationState {
  final String CardActivationNumber;
  final int expiresIn;
  final int codeLength;

  const VerifyOtpSuccess({
    required this.CardActivationNumber,
    required this.expiresIn,
    required this.codeLength,
  });

  @override
  List<Object?> get props => [CardActivationNumber, expiresIn, codeLength];
}

class CardActivationValidated extends CardActivationState {
  @override
  List<Object?> get props => [];
}
