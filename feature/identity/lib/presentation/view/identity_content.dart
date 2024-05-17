import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:identity/presentation/view/identity_form.dart';

import '../bloc/identity_bloc.dart';

class IdentityContent extends StatelessWidget {
  final IdentityState state;

  const IdentityContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: IdentityForm(
          showLoading: state is IdentityInProgress,
        ),
      ),
    );
  }
}
