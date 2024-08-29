part of 'face_detection_bloc.dart';

@immutable
abstract class FaceDetectionState extends Equatable {
  const FaceDetectionState();
}

class FaceDetectionSuccess extends FaceDetectionState {
  const FaceDetectionSuccess();

  @override
  List<Object?> get props => [];
}

class FaceDetectionFailure extends FaceDetectionState {
  final String message;

  const FaceDetectionFailure(this.message);

  @override
  List<Object?> get props => [];
}

class FaceDetectionInProgress extends FaceDetectionState {
  @override
  List<Object?> get props => [];
}

class HomeLanding extends FaceDetectionState {
  @override
  List<Object?> get props => [];
}

class WaitingLanding extends FaceDetectionState {
  @override
  List<Object?> get props => [];
}

class FaceDetectionLanding extends FaceDetectionState {
  @override
  List<Object?> get props => [];
}

class CardOrderingLanding extends FaceDetectionState {
  @override
  List<Object?> get props => [];
}
