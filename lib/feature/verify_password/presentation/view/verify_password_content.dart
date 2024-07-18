import 'package:banx/core/designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:banx/core/designsystem/widgets/custom_keypad.dart';
import 'package:banx/core/designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyPasswordContent extends StatefulWidget {
  final bool showLoading;

  const VerifyPasswordContent({
    Key? key,
    required this.showLoading,
  }) : super(key: key);

  @override
  _VerifyPasswordContentState createState() => _VerifyPasswordContentState();
}

class _VerifyPasswordContentState extends State<VerifyPasswordContent> {
  late final TextEditingController pinController;

  void _onKeyTapped(String key) {
    setState(() {
      pinController.text += key;
    });
  }

  void _onBackspace() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  void _onPrimaryTapped() {}

  @override
  void initState() {
    super.initState();
    pinController = TextEditingController();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            const SizedBox(height: 16),
            Text(
              "روز بخیر، زهرا",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 58),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Center(
                child: RoundedWithShadowInput(
                  obscureText: true,
                  controller: pinController,
                  useNativeKeyboard: false,
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
            const SizedBox(height: 32),
            CustomKeypad(
              onKeyTapped: _onKeyTapped,
              onBackspace: _onBackspace,
              onPrimaryTapped: _onPrimaryTapped,
              primaryIcon: Icons.fingerprint_rounded,
              isEnabled: pinController.text.length < 4,
            ),
            const Spacer(),
            Text(
              "رمز ورود خود را فراموش کردید؟",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
