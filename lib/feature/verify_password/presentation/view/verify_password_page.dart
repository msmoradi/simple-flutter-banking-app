import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_state.dart';
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
          if (state.status == VerifyPasswordStatus.failure) {
            if (state.errorMessage != null) {
              showMessage(state.errorMessage!);
            }
          } else if (state.status == VerifyPasswordStatus.deepLinkLanding) {
            if (state.deeplink != null) {
              onDeeplinkLanding(state.deeplink!);
            }
          }
        },
        builder: (context, state) {
          return VerifyPasswordContent(
            showMessage: showMessage,
            showBiometric: state.showBiometric ?? false,
            firstName: state.name ?? "",
            photoUrl: state.photoUrl ?? "",
            showLoading: state.status == VerifyPasswordStatus.loading,
          );
        },
      ),
    );
  }
}
