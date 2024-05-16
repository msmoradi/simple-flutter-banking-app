part of 'phone_bloc.dart';

@immutable
abstract class PhoneState extends Equatable {
  const PhoneState();
}

class PhoneFailure extends PhoneState {
  final String message;

  const PhoneFailure(this.message);

  @override
  List<Object?> get props => [];
}

class PhoneInProgress extends PhoneState {
  @override
  List<Object?> get props => [];
}

class PhoneSuccess extends PhoneState {
  final String phoneNumber;
  final String sessionId;
  final int numCells;

  const PhoneSuccess(
      {required this.phoneNumber,
      required this.sessionId,
      required this.numCells});

  @override
  List<Object?> get props => [];
}

class PhoneValidated extends PhoneState {
  @override
  List<Object?> get props => [];
}
