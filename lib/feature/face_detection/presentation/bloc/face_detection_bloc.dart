import 'dart:async';

import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/media_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

part 'face_detection_event.dart';

part 'face_detection_state.dart';

@injectable
class FaceDetectionBloc extends Bloc<FaceDetectionEvent, FaceDetectionState> {
  final MediaRepository mediaRepository;
  final ProfileRepository profileRepository;

  FaceDetectionBloc(
    this.mediaRepository,
    this.profileRepository,
  ) : super(const FaceDetectionSuccess()) {
    on<FaceDetectionSubmitted>(_onFaceDetectionSubmitted);
  }

  FutureOr<void> _onFaceDetectionSubmitted(
      FaceDetectionSubmitted event, Emitter<FaceDetectionState> emit) async {
    emit(FaceDetectionInProgress());
    try {
      final EntityWrapper<Entity> response = await mediaRepository
          .uploadVideo(path: event.path, onSendProgress: (a, b) {})
          .then((value) async {
        if (value.isSuccess) {
          return await profileRepository.getProfile();
        } else {
          return value;
        }
      });

      response.when(
          success: (entity) {
            if (entity is UserProfileEntity) {
              emit(
                DeepLinkLanding(deeplink: entity.routingButtonEntity!.deeplink),
              );
            }
          },
          partialSuccess: (message) => emit(FaceDetectionFailure(message)),
          networkError: (exception) =>
              emit(FaceDetectionFailure(exception.toString())));
    } catch (e) {
      emit(FaceDetectionFailure(e.toString()));
    }
  }
}
