import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:banx/feature/verify_password/presentation/view/verify_password_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class VerifyPasswordPage extends StatelessWidget {
  final Function(String) onDeeplinkLanding;
  final Function(String) showMessage;

  const VerifyPasswordPage({
    super.key,
    required this.onDeeplinkLanding,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<VerifyPasswordBloc>(),
      child: BlocConsumer<VerifyPasswordBloc, VerifyPasswordState>(
        listener: (context, state) {
          _handleStateChange(context, state, showMessage);
        },
        builder: (context, state) {
          return VerifyPasswordContent(
            showMessage: showMessage,
            showBiometric:
                state is VerifyPasswordInitial ? state.showBiometric : false,
            firstName: state is VerifyPasswordInitial ? state.firstName : "",
            photoUrl: state is VerifyPasswordInitial ? state.photoUrl : "",
            showLoading: state is VerifyPasswordInProgress,
            pin: state is PinExist ? state.password : "",
          );
        },
      ),
    );
  }

  void _handleStateChange(
    BuildContext context,
    VerifyPasswordState state,
    showMessage,
  ) {
    switch (state) {
      case final VerifyPasswordFailure s:
        {
          showMessage(s.message);
        }
      case final DeepLinkLanding s:
        {
          onDeeplinkLanding(s.deeplink);
        }
    }
  }
}
