import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:verify_password/presentation/bloc/verify_password_bloc.dart';

class VerifyPasswordContent extends StatelessWidget {
  final bool showLoading;

  const VerifyPasswordContent({
    super.key,
    required this.showLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            const SizedBox(height: 16),
            Text(
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
              "روز بخیر، زهرا",
            ),
            const SizedBox(height: 58),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Center(
                child: RoundedWithShadowInput(
                  autofocus: true,
                  readOnly: showLoading,
                  validator: (value) {
                    return value?.length == 4
                        ? null
                        : 'کد پیامک شده را وارد نمایید';
                  },
                  length: 4,
                  onCompleted: (password) {
                    context.read<VerifyPasswordBloc>().add(
                          VerifyPasswordSubmitted(
                            password: password,
                          ),
                        );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
