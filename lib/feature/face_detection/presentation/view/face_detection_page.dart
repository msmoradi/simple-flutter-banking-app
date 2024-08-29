import 'package:banx/feature/face_detection/presentation/bloc/face_detection_bloc.dart';
import 'package:banx/feature/face_detection/presentation/view/camera_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FaceDetectionPage extends StatelessWidget {
  final Function() homeLanding;
  final Function() waitingLanding;
  final Function() faceDetectionLanding;
  final Function() cardOrderingLanding;
  final Function(String) showMessage;

  const FaceDetectionPage({
    super.key,
    required this.homeLanding,
    required this.waitingLanding,
    required this.faceDetectionLanding,
    required this.cardOrderingLanding,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<FaceDetectionBloc>(),
      child: BlocConsumer<FaceDetectionBloc, FaceDetectionState>(
        listener: (context, state) {
          _handleStateChange(context, state, showMessage);
        },
        builder: (context, state) {
          return const CameraPage();
        },
      ),
    );
  }

  void _handleStateChange(
    BuildContext context,
    FaceDetectionState state,
    showMessage,
  ) {
    switch (state) {
      case final FaceDetectionFailure s:
        {
          showMessage(s.message);
        }
      case final HomeLanding s:
        {
          homeLanding();
        }
      case final WaitingLanding s:
        {
          waitingLanding();
        }
      case final FaceDetectionLanding s:
        {
          faceDetectionLanding();
        }
      case final CardOrderingLanding s:
        {
          cardOrderingLanding();
        }
    }
  }
}
