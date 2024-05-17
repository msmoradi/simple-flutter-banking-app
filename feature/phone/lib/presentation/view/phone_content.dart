import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:phone/presentation/bloc/phone_bloc.dart';
import 'package:phone/presentation/view/phone_form.dart';

class PhoneContent extends StatelessWidget {
  final PhoneState state;

  const PhoneContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: PhoneForm(
          showLoading: state is PhoneInProgress,
        ),
      ),
    );
  }
}
