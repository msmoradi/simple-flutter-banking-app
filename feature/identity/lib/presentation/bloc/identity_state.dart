part of 'identity_bloc.dart';

@immutable
abstract class IdentityState extends Equatable {
  const IdentityState();
}

class IdentityFailure extends IdentityState {
  final String message;

  const IdentityFailure(this.message);

  @override
  List<Object?> get props => [];
}

class IdentityInProgress extends IdentityState {
  @override
  List<Object?> get props => [];
}

class IdentitySuccess extends IdentityState {
  const IdentitySuccess();

  @override
  List<Object?> get props => [];
}

class IdentityValidated extends IdentityState {
  @override
  List<Object?> get props => [];
}
