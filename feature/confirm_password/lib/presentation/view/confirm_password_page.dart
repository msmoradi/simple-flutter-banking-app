import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:utils/extension/build_context.dart';

class ConfirmPasswordPage extends StatefulWidget {
  final Function() onNext;
  final String phoneNumber;
  final String newPassword;
  final int numCells;

  const ConfirmPasswordPage(
      {super.key,
      required this.onNext,
      required this.phoneNumber,
      required this.newPassword,
      required this.numCells});

  @override
  State<ConfirmPasswordPage> createState() => _ConfirmPasswordPageState();
}

class _ConfirmPasswordPageState extends State<ConfirmPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  Future<void> onConfirm(String value) async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      // Store username and password securely
      await _secureStorage.write(
        key: 'username',
        value: widget.phoneNumber,
      );
      await _secureStorage.write(
        key: 'password',
        value: value,
      );

      widget.onNext();
    }
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
                    controller: pinController,
                    focusNode: focusNode,
                    validator: (value) {
                      return value?.length == widget.numCells &&
                              value == widget.newPassword
                          ? null
                          : 'Pin is incorrect';
                    },
                    length: widget.numCells,
                    onCompleted: onConfirm,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryFillButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              FocusManager.instance.primaryFocus?.unfocus();
              onConfirm(pinController.text);
            }
          },
          label: translator.acceptAndContinue,
        ),
      ),
    );
  }
}
