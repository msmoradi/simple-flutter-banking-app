import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/feature/kyc_status/presentation/bloc/kyc_status_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'kyc_status_event.dart';

@injectable
class KycStatusBloc extends Bloc<KycStatusEvent, KycStatusState> {
  final AuthenticationRepository authenticationRepository;

  KycStatusBloc({required this.authenticationRepository})
      : super(const KycStatusState()) {
    on<ActionClicked>(_onActionClicked);
    on<KycStatusSubmitted>(_onKycStatusSubmitted);
    add(KycStatusSubmitted());
  }

  Future<void> _onActionClicked(
    ActionClicked event,
    Emitter<KycStatusState> emit,
  ) async {
    if (state.deeplink != null) {
      emit(state.copyWith(status: KycStatusStatus.deepLinkLanding));
    } else {
      add(KycStatusSubmitted());
    }
  }

  Future<void> _onKycStatusSubmitted(
    KycStatusSubmitted event,
    Emitter<KycStatusState> emit,
  ) async {
    try {
      emit(state.copyWith(status: KycStatusStatus.loading));
      final response = await authenticationRepository.kyc();

      response.when(
        success: (entity) {
          emit(
            state.copyWith(
                identity: entity.state.identity,
                phoneNumber: entity.state.phoneNumber,
                face: entity.state.face,
                sayah: entity.state.sayah),
          );

          if (entity.routingButton != null) {
            emit(
              state.copyWith(
                  status: KycStatusStatus.initial,
                  deeplink: entity.routingButton!.deeplink,
                  actionTitle: entity.routingButton!.title!,
                  actionIcon: "arrow-left",
                  iconAlignment: IconAlignment.end),
            );
          } else {
            emit(
              state.copyWith(
                  status: KycStatusStatus.initial,
                  deeplink: null,
                  actionTitle: "به‌روزرسانی وضعیت",
                  actionIcon: "refresh-ccw",
                  iconAlignment: IconAlignment.start),
            );
          }
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: KycStatusStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: KycStatusStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: KycStatusStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
