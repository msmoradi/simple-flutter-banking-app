import 'package:banx/core/designsystem/widgets/custom_keypad.dart';
import 'package:banx/core/designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPasswordContent extends StatefulWidget {
  final String newPassword;
  final String phoneNumber;
  final ConfirmPasswordState state;

  const ConfirmPasswordContent({
    super.key,
    required this.newPassword,
    required this.phoneNumber,
    required this.state,
  });

  @override
  State<ConfirmPasswordContent> createState() => _ConfirmPasswordContentState();
}

class _ConfirmPasswordContentState extends State<ConfirmPasswordContent> {
  late final GlobalKey<FormState> formKey;
  late final TextEditingController pinController;
  late final FocusNode focusNode;

  void _onPrimaryTapped() async {
    if (formKey.currentState!.validate()) {
      focusNode.unfocus();
      context.read<ConfirmPasswordBloc>().add(
            ConfirmPasswordSubmitted(
              phoneNumber: widget.phoneNumber,
              password: pinController.text,
            ),
          );
    }
  }

  void _onKeyTapped(String key) {
    if (!mounted) return;
    setState(() {
      pinController.text += key;
    });
  }

  void _onBackspace() {
    if (!mounted) return;
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "تأیید رمز عبور",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  "رمز ورود خود را مجدد وارد نمایید",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 56),
                Form(
                  key: formKey,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: RoundedWithShadowInput(
                        obscureText: true,
                        focusNode: focusNode,
                        controller: pinController,
                        useNativeKeyboard: false,
                        length: 4,
                        validator: (value) {
                          return value?.length == 4 && value == widget.newPassword
                              ? null
                              : 'رمز مطابقت ندارد';
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 56),
                CustomKeypad(
                  onKeyTapped: _onKeyTapped,
                  onBackspace: _onBackspace,
                  onPrimaryTapped: _onPrimaryTapped,
                  primaryIcon: Icons.arrow_circle_left_rounded,
                  isEnabled: pinController.text.length < 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
