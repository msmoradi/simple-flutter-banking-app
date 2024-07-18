import 'package:banx/core/designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:banx/core/designsystem/widgets/custom_keypad.dart';
import 'package:banx/core/designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';

class CreatePasswordPage extends StatefulWidget {
  final Function(String, String) onNext;
  final String phoneNumber;

  const CreatePasswordPage({
    super.key,
    required this.onNext,
    required this.phoneNumber,
  });

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  late final GlobalKey<FormState> formKey;
  late final TextEditingController pinController;
  late final FocusNode focusNode;

  void _onPrimaryTapped() async {
    if (formKey.currentState!.validate()) {
      focusNode.unfocus();
      widget.onNext(widget.phoneNumber, pinController.text);
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
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "تعریف رمز عبور",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                "رمز ورود به اپلیکیشن باید بین ۴ الی ۶ رقم باشد",
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
                        return value?.length == 4 ? null : 'رمز را وارد کنید';
                      },
                    ),
                  ),
                ),
              ),
              const Spacer(),
              CustomKeypad(
                onKeyTapped: _onKeyTapped,
                onBackspace: _onBackspace,
                onPrimaryTapped: _onPrimaryTapped,
                primaryIcon: Icons.arrow_circle_left_rounded,
                isEnabled: pinController.text.length < 4,
              ),
              const SizedBox(height: 42),
            ],
          ),
        ),
      ),
    );
  }
}
