part of 'kyc_status_bloc.dart';

abstract class KycStatusEvent extends Equatable {
  const KycStatusEvent();

  @override
  List<Object> get props => [];
}

class ActionClicked extends KycStatusEvent {
  final String? deeplink;

  const ActionClicked({
    this.deeplink,
  });

  @override
  List<Object> get props => [];
}

class KycStatusSubmitted extends KycStatusEvent {

  @override
  List<Object> get props => [];
}
