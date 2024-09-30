// error_action_handler.dart
import 'dart:async';

import 'error_dto.dart';

class ErrorActionHandler {
  static final ErrorActionHandler _instance = ErrorActionHandler._internal();

  factory ErrorActionHandler() => _instance;

  ErrorActionHandler._internal();

  final _controller = StreamController<ErrorAction?>.broadcast();

  Stream<ErrorAction?> get actions => _controller.stream;

  void performAction(ErrorAction? action) {
    _controller.add(action);
  }

  void dispose() {
    _controller.close();
  }
}