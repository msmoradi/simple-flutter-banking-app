import 'package:face_detection/presentation/view/face_detector_view.dart';
import 'package:flutter/material.dart';

class FaceDetectionPage extends StatelessWidget {
  final Function() onNext;

  const FaceDetectionPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return FaceDetectorView();
  }
}
