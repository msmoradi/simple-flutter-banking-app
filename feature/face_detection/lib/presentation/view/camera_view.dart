import 'dart:io';

import 'package:camera/camera.dart';
import 'package:face_detection/presentation/view/video_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class CameraView extends StatefulWidget {
  CameraView(
      {Key? key,
      required this.onImage,
      this.onCameraFeedReady,
      this.onCameraLensDirectionChanged,
      this.initialCameraLensDirection = CameraLensDirection.back,
      required this.rotY})
      : super(key: key);

  final Function(InputImage inputImage) onImage;
  final VoidCallback? onCameraFeedReady;
  final Function(CameraLensDirection direction)? onCameraLensDirectionChanged;
  final CameraLensDirection initialCameraLensDirection;
  final double rotY;

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  static List<CameraDescription> _cameras = [];
  CameraController? _controller;
  int _cameraIndex = -1;

  late FaceDetector _faceDetector;
  bool _isDetecting = false;
  bool _isRecording = false;
  String? _videoPath;

  @override
  void initState() {
    super.initState();

    _initialize();

    _faceDetector = FaceDetector(
      options: FaceDetectorOptions(
        enableClassification: true,
        enableTracking: true,
      ),
    );
  }

  void _initialize() async {
    if (_cameras.isEmpty) {
      _cameras = await availableCameras();
    }

    _cameraIndex = _cameras.indexWhere(
          (camera) => camera.lensDirection == widget.initialCameraLensDirection,
    );

    if (_cameraIndex != -1) {
      _startLiveFeed();
    }
  }

  Future<void> _startFaceDetection() async {
    print(' camera_view -> _startFaceDetection');
    _controller!.startImageStream((CameraImage image) async {
      if (_isDetecting) return;
      _isDetecting = true;

      final inputImage = _inputImageFromCameraImage(image);
      if (inputImage == null) return;
      final List<Face> faces = await _faceDetector.processImage(inputImage);

      print(' camera_view -> _startFaceDetection , faces: ${faces.toString()}');
      if (faces.isNotEmpty) {
        final face = faces[0];
        _checkHeadPosition(face);
      } else {
        if (_isRecording) {
          _stopRecording();
        }
      }

      _isDetecting = false;
    });
  }

  void _checkHeadPosition(Face face) {
    print(' camera_view -> _checkHeadPosition , face: $face');
    final boundingBox = face.boundingBox;

    // Define the mask bounding box (this should match the MaskPainter)
    final maskCenterX = MediaQuery.of(context).size.width / 2;
    final maskCenterY = MediaQuery.of(context).size.height / 2;
    const originalMaskSize = 250.0; // Original size of the square mask
    final maskSize = originalMaskSize * 1.2; // Increase size by 20%

    final maskLeft = maskCenterX - maskSize / 2;
    final maskTop = maskCenterY - maskSize / 2;
    final maskRight = maskCenterX + maskSize / 2;
    final maskBottom = maskCenterY + maskSize / 2;

    // Add a 10% tolerance to the mask bounding box
    final tolerance = maskSize * 0.1;
    final maskBoundingBox = Rect.fromLTRB(
      maskLeft - tolerance,
      maskTop - tolerance,
      maskRight + tolerance,
      maskBottom + tolerance,
    );

    // Check if the face boundingBox is within the mask boundingBox with tolerance
    final isFaceInsideMask = maskBoundingBox.overlaps(boundingBox);

    print(
        ' camera_view -> _checkHeadPosition, isFaceInsideMask: $isFaceInsideMask , isRecording: $_isRecording');

    if (isFaceInsideMask) {
      if (!_isRecording) {
        _startRecording();
      }
    } else {
      if (_isRecording) {
        _stopRecording();
      }
    }
  }

  Future<void> _startRecording() async {
    print(' camera_view -> _startRecording');
    if (_controller!.value.isRecordingVideo) return;

    try {
      await _controller!.startVideoRecording();
      setState(() {
        _isRecording = true;
      });
      print(' camera_view -> Recording started');
    } catch (e) {
      print(' camera_view -> Error starting video recording: $e');
    }
  }

  Future<void> _stopRecording() async {
    print(' camera_view -> _stopRecording');
    if (!_controller!.value.isRecordingVideo) return;

    try {
      final XFile videoFile = await _controller!.stopVideoRecording();
      setState(() {
        _isRecording = false;
        _videoPath = videoFile.path;
      });
      print(' camera_view -> Recording stopped: $_videoPath');
    } catch (e) {
      print(' camera_view -> Error stopping video recording: $e');
    }
  }

  void _previewVideo(String videoPath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoPreviewScreen(videoPath: videoPath),
      ),
    );
  }

  @override
  void dispose() {
    _stopLiveFeed();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _liveFeedBody(),
          MaskOverlay(isRecording: _isRecording),
          if (_videoPath != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _previewVideo(_videoPath!),
                    child: Text('Preview Video'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _liveFeedBody() {
    if (_cameras.isEmpty) return Container();
    if (_controller == null) return Container();
    if (_controller?.value.isInitialized == false) return Container();
    return ColoredBox(
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: CameraPreview(
              _controller!,
            ),
          ),
          MaskOverlay(isRecording: _isRecording),
        ],
      ),
    );
  }

  Future _startLiveFeed() async {
    print(' camera_view -> _startLiveFeed');
    final camera = _cameras[_cameraIndex];
    _controller = CameraController(
      camera,
      // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: Platform.isAndroid
          ? ImageFormatGroup.nv21
          : ImageFormatGroup.bgra8888,
    );
    _controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      if (!mounted) return;
      setState(() {});
      _startFaceDetection();
    });
  }

  Future _stopLiveFeed() async {
    await _controller?.stopImageStream();
    await _controller?.dispose();
    _faceDetector.close();
    _controller = null;
  }

  final _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

  InputImage? _inputImageFromCameraImage(CameraImage image) {
    if (_controller == null) return null;

    // get image rotation
    // it is used in android to convert the InputImage from Dart to Java: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/google_mlkit_commons/android/src/main/java/com/google_mlkit_commons/InputImageConverter.java
    // `rotation` is not used in iOS to convert the InputImage from Dart to Obj-C: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/google_mlkit_commons/ios/Classes/MLKVisionImage%2BFlutterPlugin.m
    // in both platforms `rotation` and `camera.lensDirection` can be used to compensate `x` and `y` coordinates on a canvas: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/example/lib/vision_detector_views/painters/coordinates_translator.dart
    final camera = _cameras[_cameraIndex];
    final sensorOrientation = camera.sensorOrientation;
    // print(
    //     'lensDirection: ${camera.lensDirection}, sensorOrientation: $sensorOrientation, ${_controller?.value.deviceOrientation} ${_controller?.value.lockedCaptureOrientation} ${_controller?.value.isCaptureOrientationLocked}');
    InputImageRotation? rotation;
    if (Platform.isIOS) {
      rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
    } else if (Platform.isAndroid) {
      var rotationCompensation =
          _orientations[_controller!.value.deviceOrientation];
      if (rotationCompensation == null) return null;
      if (camera.lensDirection == CameraLensDirection.front) {
        // front-facing
        rotationCompensation = (sensorOrientation + rotationCompensation) % 360;
      } else {
        // back-facing
        rotationCompensation =
            (sensorOrientation - rotationCompensation + 360) % 360;
      }
      rotation = InputImageRotationValue.fromRawValue(rotationCompensation);
      // print(' camera_view -> rotationCompensation: $rotationCompensation');
    }
    if (rotation == null) return null;
    // print(' camera_view -> final rotation: $rotation');

    // get image format
    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    // validate format depending on platform
    // only supported formats:
    // * nv21 for Android
    // * bgra8888 for iOS
    if (format == null ||
        (Platform.isAndroid && format != InputImageFormat.nv21) ||
        (Platform.isIOS && format != InputImageFormat.bgra8888)) return null;

    // since format is constraint to nv21 or bgra8888, both only have one plane
    if (image.planes.length != 1) return null;
    final plane = image.planes.first;

    // compose InputImage using bytes
    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: rotation, // used only in Android
        format: format, // used only in iOS
        bytesPerRow: plane.bytesPerRow, // used only in iOS
      ),
    );
  }
}

class MaskOverlay extends StatefulWidget {
  final bool isRecording;

  MaskOverlay({required this.isRecording});

  @override
  _MaskOverlayState createState() => _MaskOverlayState();
}

class _MaskOverlayState extends State<MaskOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void didUpdateWidget(MaskOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isRecording) {
      _controller.repeat(reverse: true);
    } else {
      _controller.stop();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Semi-transparent background with mask
        CustomPaint(
          size: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height),
          painter: MaskPainter(),
        ),
        // Red circular animation when recording
        if (widget.isRecording)
          Center(
            child: FadeTransition(
              opacity: _animation,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        // Instructions text
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'سر خود را در کادر قرار دهید',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}

class MaskPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Draw semi-transparent background
    final paintBackground = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final originalMaskSize = 250.0; // Original size of the square mask
    final maskSize = originalMaskSize * 1.2; // Increase size by 20%
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final left = centerX - maskSize / 2;
    final top = centerY - maskSize / 2;
    final right = centerX + maskSize / 2;
    final bottom = centerY + maskSize / 2;
    final cornerLength = 20.0; // Length of the corner lines

    // Define the cut-out area (square)
    final path = Path()
      ..addRect(Rect.fromCenter(
        center: Offset(centerX, centerY),
        width: maskSize,
        height: maskSize,
      ));

    // Draw the background, excluding the mask area
    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
        path,
      ),
      paintBackground,
    );

    // Draw the corner borders
    final paintBorder = Paint()
      ..color = Colors.blue // Use the same color as in the provided image
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0; // Adjust the stroke width as needed

    final borderPath = Path()
      ..moveTo(left, top + cornerLength) // Top-left vertical line
      ..lineTo(left, top)
      ..lineTo(left + cornerLength, top) // Top-left horizontal line
      ..moveTo(right - cornerLength, top) // Top-right horizontal line
      ..lineTo(right, top)
      ..lineTo(right, top + cornerLength) // Top-right vertical line
      ..moveTo(right, bottom - cornerLength) // Bottom-right vertical line
      ..lineTo(right, bottom)
      ..lineTo(right - cornerLength, bottom) // Bottom-right horizontal line
      ..moveTo(left + cornerLength, bottom) // Bottom-left horizontal line
      ..lineTo(left, bottom)
      ..lineTo(left, bottom - cornerLength); // Bottom-left vertical line

    canvas.drawPath(borderPath, paintBorder);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
