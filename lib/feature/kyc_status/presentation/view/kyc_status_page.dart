import 'package:banx/feature/kyc_status/presentation/bloc/kyc_status_bloc.dart';
import 'package:banx/feature/kyc_status/presentation/view/kyc_status_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class KycStatusPage extends StatelessWidget {
  final Function(String) showMessage;
  final Function(String) onDeeplinkLanding;

  const KycStatusPage({
    super.key,
    required this.onDeeplinkLanding,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<KycStatusBloc>(),
      child: BlocConsumer<KycStatusBloc, KycStatusState>(
        listener: (context, state) {
          if (state is KycStatusFailure) {
            showMessage(state.message);
          } else if (state is DeepLinkLanding) {
            onDeeplinkLanding(state.deeplink);
          }
        },
        builder: (context, state) {
          return KycStatusContent(
            showLoading: state is KycStatusInProgress,
            onActionClick: () {
              context.read<KycStatusBloc>().add(
                    const ActionClicked(),
                  );
            },
            showMessage: showMessage,
            actionTitle: state is KycStatusSuccess ? state.actionTitle : "",
            actionIcon: state is KycStatusSuccess ? state.actionIcon : "",
            iconAlignment: state is KycStatusSuccess
                ? state.iconAlignment
                : IconAlignment.end,
            identity: state is KycStatusSuccess ? state.identity : null,
            phoneNumber: state is KycStatusSuccess ? state.phoneNumber : null,
            face: state is KycStatusSuccess ? state.face : null,
            sayah: state is KycStatusSuccess ? state.sayah : null,
          );
        },
      ),
    );
  }
}
