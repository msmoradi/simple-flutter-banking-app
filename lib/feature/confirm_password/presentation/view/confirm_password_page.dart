import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:banx/feature/confirm_password/presentation/view/confirm_password_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConfirmPasswordPage extends StatelessWidget {
  final Function() homeLanding;
  final Function() waitingLanding;
  final Function() faceDetectionLanding;
  final Function() cardOrderingLanding;
  final String phoneNumber;
  final String newPassword;

  const ConfirmPasswordPage({
    super.key,
    required this.homeLanding,
    required this.waitingLanding,
    required this.faceDetectionLanding,
    required this.cardOrderingLanding,
    required this.phoneNumber,
    required this.newPassword,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<ConfirmPasswordBloc>(),
      child: BlocConsumer<ConfirmPasswordBloc, ConfirmPasswordState>(
        listener: (context, state) {
          _handleStateChange(context, state);
        },
        builder: (context, state) {
          return ConfirmPasswordContent(
            state: state,
            newPassword: newPassword,
            phoneNumber: phoneNumber,
          );
        },
      ),
    );
  }

  void _handleStateChange(BuildContext context, ConfirmPasswordState state) {
    switch (state) {
      case final ConfirmPasswordFailure s:
        {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(s.message)),
            );
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
