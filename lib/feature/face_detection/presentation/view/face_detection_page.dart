import 'package:banx/feature/face_detection/presentation/view/camera_view.dart';
import 'package:flutter/material.dart';

class FaceDetectionPage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const FaceDetectionPage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return const CameraView();
  }
}
