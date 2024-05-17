import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:identity/presentation/view/identity_form.dart';

import '../bloc/identity_bloc.dart';

class IdentityPage extends StatelessWidget {
  final Function(String, String, int) onVerifyOtp;

  const IdentityPage({
    super.key,
    required this.onVerifyOtp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocProvider(
          create: (context) => IdentityBloc(),
          child: IdentityForm(
            onVerifyOtp: onVerifyOtp,
          ),
        ),
      ),
    );
  }
}
