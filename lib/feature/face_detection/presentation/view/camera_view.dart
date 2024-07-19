import 'dart:io';

import 'package:banx/feature/face_detection/presentation/view/video_preview_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class CameraView extends StatefulWidget {
  const CameraView({
    super.key,
    this.initialCameraLensDirection = CameraLensDirection.front,
  });

  final CameraLensDirection initialCameraLensDirection;

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  static List<CameraDescription> _cameras = [];
  CameraController? _controller;
  int _cameraIndex = -1;

  late FaceDetector _faceDetector;
  bool _isRecording = false;
  String? _videoPath;
  bool _canProcess = true;
  bool _isBusy = false;
  double rotY = 0;
  int _noFaceDetectedCount =
      0; // New counter to track consecutive frames with no faces
  String description = 'سر خود را در کادر قرار دهید';

  @override
  void initState() {
    super.initState();

    _initialize();
  }

  void _initialize() async {
    if (_cameras.isEmpty) {
      _cameras = await availableCameras();
    }

    _faceDetector = FaceDetector(
      options: FaceDetectorOptions(
        enableContours: true,
        enableLandmarks: true,
      ),
    );

    _cameraIndex = _cameras.indexWhere(
      (camera) => camera.lensDirection == widget.initialCameraLensDirection,
    );

    if (_cameraIndex != -1) {
      _startLiveFeed();
    }
  }

  Future<void> _startFaceDetection() async {
    if (_isBusy) return;
    if (!_canProcess) return;
    _isBusy = true;

    print(' camera_view -> _startFaceDetection');
    _controller!.startImageStream((CameraImage image) async {
      final inputImage = _inputImageFromCameraImage(image);
      if (inputImage == null) return;

      final List<Face> faces = await _faceDetector.processImage(inputImage);

      if (inputImage.metadata?.size != null &&
          inputImage.metadata?.rotation != null) {
        setState(() {
          rotY = faces.last.headEulerAngleY ?? 0.0;
          if (rotY >= 20.0) {
            description = 'سر خود را به راست بچرخانید';
          } else {
            description = 'سر خود را به چپ بچرخانید';
          }
        });
      }

      print(' camera_view -> _startFaceDetection , faces: ${faces.length}');
      if (faces.isNotEmpty) {
        final face = faces[0];
        _checkHeadPosition(face);
      } else {
        _noFaceDetectedCount++;
        if (_isRecording && _noFaceDetectedCount >= 5) {
          _stopRecording();
        }
      }

      _isBusy = false;
    });
  }

  void _checkHeadPosition(Face face) {
    print(' camera_view -> _checkHeadPosition , face: $face');
    final boundingBox = face.boundingBox;

    // Define the mask bounding box (this should match the MaskPainter)
    final maskCenterX = MediaQuery.of(context).size.width / 2;
    final maskCenterY = MediaQuery.of(context).size.height / 2;
    const originalMaskSize = 250.0; // Original size of the square mask
    const maskSize = originalMaskSize * 1.1; // Increase size by 20%

    final maskLeft = maskCenterX - maskSize / 2;
    final maskTop = maskCenterY - maskSize / 2;
    final maskRight = maskCenterX + maskSize / 2;
    final maskBottom = maskCenterY + maskSize / 2;

    // Add a 10% tolerance to the mask bounding box
    const tolerance = maskSize * 0.05;
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
    _canProcess = false;
    _stopLiveFeed();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _liveFeedBody(),
          if (_videoPath != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _previewVideo(_videoPath!),
                    child: const Text('Preview Video'),
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
          MaskOverlay(
            isRecording: _isRecording,
            description: description,
          ),
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

    final camera = _cameras[_cameraIndex];
    final sensorOrientation = camera.sensorOrientation;
    InputImageRotation? rotation;
    if (Platform.isIOS) {
      rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
    } else if (Platform.isAndroid) {
      var rotationCompensation =
          _orientations[_controller!.value.deviceOrientation];
      if (rotationCompensation == null) return null;
      if (camera.lensDirection == CameraLensDirection.front) {
        rotationCompensation = (sensorOrientation + rotationCompensation) % 360;
      } else {
        rotationCompensation =
            (sensorOrientation - rotationCompensation + 360) % 360;
      }
      rotation = InputImageRotationValue.fromRawValue(rotationCompensation);
    }
    if (rotation == null) return null;

    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    if (format == null ||
        (Platform.isAndroid && format != InputImageFormat.nv21) ||
        (Platform.isIOS && format != InputImageFormat.bgra8888)) return null;

    if (image.planes.length != 1) return null;
    final plane = image.planes.first;

    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: rotation,
        format: format,
        bytesPerRow: plane.bytesPerRow,
      ),
    );
  }
}

class MaskOverlay extends StatefulWidget {
  final bool isRecording;
  final String description;

  const MaskOverlay({super.key, 
    required this.isRecording,
    required this.description,
  });

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
      duration: const Duration(milliseconds: 500),
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
                decoration: const BoxDecoration(
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
              widget.description,
              style: const TextStyle(color: Colors.white, fontSize: 18),
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

    const originalMaskSize = 250.0; // Original size of the square mask
    const maskSize = originalMaskSize * 1.2; // Increase size by 20%
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final left = centerX - maskSize / 2;
    final top = centerY - maskSize / 2;
    final right = centerX + maskSize / 2;
    final bottom = centerY + maskSize / 2;
    const cornerLength = 20.0; // Length of the corner lines

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
      ..color = Colors.grey // Use the same color as in the provided image
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

enum Step {
  right,
  left,
  center,
  finish;
}
