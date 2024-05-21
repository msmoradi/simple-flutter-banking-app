import 'package:bloc/bloc.dart';
import 'package:domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'referral_event.dart';
part 'referral_state.dart';

class ReferralBloc extends Bloc<ReferralEvent, ReferralState> {
  final AuthenticationRepository authenticationRepository;

  ReferralBloc({
    required this.authenticationRepository,
  }) : super(ReferralValidated()) {
    on<ReferralSubmitted>(_onReferralSubmitted);
  }

  Future<void> _onReferralSubmitted(
    ReferralSubmitted event,
    Emitter<ReferralState> emit,
  ) async {
    emit(const ReferralSuccess());
    /*emit(ReferralInProgress());
    try {
      final response =
          await authenticationRepository.sendOtp(event.referralNumber);
      response.when(
          success: (success) => emit(ReferralSuccess()),
          partialSuccess: (message) => emit(ReferralFailure(message)),
          networkError: (exception) =>
              emit(ReferralFailure(exception.toString())));
    } catch (_) {
      emit(const ReferralFailure('on handled error'));
    }*/
  }
}
