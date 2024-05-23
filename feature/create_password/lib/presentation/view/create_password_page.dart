import 'package:designsystem/widgets/components/custom_keyboard.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CreatePasswordPage extends StatefulWidget {
  final Function() onNext;
  final String phoneNumber;
  final int numCells;

  const CreatePasswordPage(
      {super.key,
      required this.onNext,
      required this.phoneNumber,
      required this.numCells});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  Future<void> onConfirm() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      // Store username and password securely
      await _secureStorage.write(
        key: 'username',
        value: widget.phoneNumber,
      );
      await _secureStorage.write(
        key: 'password',
        value: pinController.text,
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
                    controller: pinController,
                    focusNode: focusNode,
                    useNativeKeyboard: false,
                    validator: (value) {
                      return value?.length == widget.numCells
                          ? null
                          : 'Pin is incorrect';
                    },
                    length: widget.numCells,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomKeyBoard(
                onConfirm: onConfirm,
                maxLength: 4,
                controller: pinController,
              ),
            ),
            const SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}
