import 'dart:async';

import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/media_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/feature/face_detection/presentation/bloc/face_detection_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

part 'face_detection_event.dart';

@injectable
class FaceDetectionBloc extends Bloc<FaceDetectionEvent, FaceDetectionState> {
  final MediaRepository mediaRepository;
  final ProfileRepository profileRepository;

  FaceDetectionBloc(
    this.mediaRepository,
    this.profileRepository,
  ) : super(const FaceDetectionState()) {
    on<FaceDetectionSubmitted>(_onFaceDetectionSubmitted);
  }

  FutureOr<void> _onFaceDetectionSubmitted(
      FaceDetectionSubmitted event, Emitter<FaceDetectionState> emit) async {
    try {
      emit(state.copyWith(status: FaceDetectionStatus.loading));
      final EntityWrapper<Entity> response = await mediaRepository.uploadVideo(
          path: event.path,
          onSendProgress: (sent, total) {
            final progress = ((sent / total) * 100).toInt();
            emit(state.copyWith(progress: progress));
          });

      response.when(
        success: (entity) {
          print('::::::::::::::::::::::::;; success');
          emit(state.copyWith(status: FaceDetectionStatus.kyc));

          /*if (entity is UserProfileEntity) {
              emit(
                DeepLinkLanding(deeplink: entity.routingButtonEntity!.deeplink),
              );
            }*/
          /*emit(
              KycStatus(),
            );*/
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: FaceDetectionStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: FaceDetectionStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FaceDetectionStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
