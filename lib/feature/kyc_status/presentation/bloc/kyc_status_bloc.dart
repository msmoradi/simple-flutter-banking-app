import 'package:banx/core/domain/entities/kyc_status_dto.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'kyc_status_event.dart';

part 'kyc_status_state.dart';

@injectable
class KycStatusBloc extends Bloc<KycStatusEvent, KycStatusState> {
  final AuthenticationRepository authenticationRepository;

  KycStatusBloc({required this.authenticationRepository})
      : super(KycStatusInProgress()) {
    on<ActionClicked>(_onActionClicked);
    on<KycStatusSubmitted>(_onKycStatusSubmitted);
    add(KycStatusSubmitted());
  }

  Future<void> _onActionClicked(
    ActionClicked event,
    Emitter<KycStatusState> emit,
  ) async {
    if (state is! KycStatusSuccess) return;

    final deeplink = (state as KycStatusSuccess).deeplink;
    if (deeplink != null) {
      emit(DeepLinkLanding(deeplink: deeplink));
    } else {
      add(KycStatusSubmitted());
    }
  }

  Future<void> _onKycStatusSubmitted(
    KycStatusSubmitted event,
    Emitter<KycStatusState> emit,
  ) async {
    try {
      final response = await authenticationRepository.kyc();

      response.when(
          success: (entity) {
            final KycStatusSuccess kycStatusSuccess = KycStatusSuccess(
                identity: entity.state.identity,
                phoneNumber: entity.state.phoneNumber,
                face: entity.state.face,
                sayah: entity.state.sayah);

            if (entity.routingButton != null) {
              emit(
                kycStatusSuccess.copyWith(
                  deeplink: entity.routingButton!.deeplink,
                  actionTitle: entity.routingButton!.title!,
                  actionIcon: "arrow-left",
                ),
              );
            } else {
              emit(
                kycStatusSuccess.copyWith(
                  deeplink: null,
                  actionTitle: "به‌روزرسانی وضعیت",
                  actionIcon: "refresh-ccw",
                ),
              );
            }
          },
          partialSuccess: (message) => emit(KycStatusFailure(message)),
          networkError: (exception) =>
              emit(KycStatusFailure(exception.toString())));
    } catch (e) {
      emit(KycStatusFailure(e.toString()));
    }
  }
}
