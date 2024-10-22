part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class SelectTypeEvent extends TransactionEvent {
  final DropdownChipType selectedType;

  SelectTypeEvent(this.selectedType);
}

class TransactionSubmitted extends TransactionEvent {
  final String password;

  const TransactionSubmitted({
    required this.password,
  });

  @override
  List<Object> get props => [password];
}

class BiometricsSubmitted extends TransactionEvent {
  const BiometricsSubmitted();

  @override
  List<Object> get props => [];
}

class Init extends TransactionEvent {
  const Init();

  @override
  List<Object> get props => [];
}
