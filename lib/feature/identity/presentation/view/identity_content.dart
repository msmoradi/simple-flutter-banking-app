import 'package:banx/core/designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:banx/feature/identity/presentation/view/identity_form.dart';
import 'package:flutter/material.dart';

import '../bloc/identity_bloc.dart';

class IdentityContent extends StatelessWidget {
  final IdentityState state;
  final String phoneNumber;
  final bool needReferralCode;

  const IdentityContent({
    super.key,
    required this.state,
    required this.phoneNumber,
    required this.needReferralCode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: IdentityForm(
            phoneNumber: phoneNumber,
            needReferralCode: needReferralCode,
            showLoading: state is IdentityInProgress,
          ),
        ),
      ),
    );
  }
}
