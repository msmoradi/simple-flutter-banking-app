part of 'bank_bloc.dart';

@immutable
abstract class BankState extends Equatable {
  const BankState();
}

class BankSuccess extends BankState {
  const BankSuccess();

  @override
  List<Object?> get props => [];
}
