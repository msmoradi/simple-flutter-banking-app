part of 'identity_bloc.dart';

abstract class IdentityEvent extends Equatable {
  const IdentityEvent();

  @override
  List<Object> get props => [];
}

class IdentitySubmitted extends IdentityEvent {
  final String birthday;
  final String nationalId;

  const IdentitySubmitted({required this.nationalId, required this.birthday});

  @override
  List<Object> get props => [birthday, nationalId];
}
