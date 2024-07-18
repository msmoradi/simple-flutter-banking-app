import 'package:banx/core/designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:banx/feature/phone/presentation/bloc/phone_bloc.dart';
import 'package:banx/feature/phone/presentation/view/phone_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneContent extends StatelessWidget {
  final PhoneState state;

  const PhoneContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PhoneForm(
            showLoading: state is PhoneInProgress,
          ),
        ),
      ),
    );
  }
}
