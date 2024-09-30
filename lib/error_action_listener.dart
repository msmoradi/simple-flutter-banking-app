import 'dart:async';
import 'package:banx/core/networking/model/dto/error_action_handler.dart';
import 'package:banx/core/networking/model/dto/error_dto.dart';
import 'package:banx/main.dart';
import 'package:flutter/material.dart';
import 'package:banx/composition/verify_password_page_factory.dart';

class ErrorActionListener extends StatefulWidget {
  final Widget child;
  final Function(String) navigate;
  final Function(String) showMessage;

  ErrorActionListener({
    Key? key,
    required this.child,
    required this.navigate,
    required this.showMessage,
  }) : super(key: key);

  @override
  _ErrorActionListenerState createState() => _ErrorActionListenerState();
}

class _ErrorActionListenerState extends State<ErrorActionListener> {
  late StreamSubscription<ErrorAction?> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = ErrorActionHandler().actions.listen((ErrorAction? action) {
      if (action != null) {
        switch (action) {
          case ErrorAction.loggedOut:
            restartApp();
            break;
          case ErrorAction.nfcLogin:
            _showNfcLoginDialog();
            break;
          case ErrorAction.passwordLogin:
            widget.navigate(VerifyPasswordPageFactory.path);
            break;
          case ErrorAction.toast:
            // i need to pass error message here
            final String errorMessage = "";
            widget.showMessage(errorMessage);
            break;
          default:
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  /// Displays an NFC Login Dialog
  void _showNfcLoginDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('NFC Login'),
        content: const Text('Please authenticate using NFC.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
