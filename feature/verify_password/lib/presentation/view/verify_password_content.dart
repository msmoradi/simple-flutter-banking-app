import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:verify_password/presentation/view/verify_password_form.dart';

class VerifyPasswordContent extends StatelessWidget {
  final VerifyPasswordState state;
  final String? errorMessage;

  const VerifyPasswordContent({
    super.key,
    required this.state,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: VerifyPasswordForm(
            showLoading: state is VerifyPasswordInProgress,
            errorMessage: errorMessage),
      ),
    );
  }
}
