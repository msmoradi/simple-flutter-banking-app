import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:utils/extension/build_context.dart';

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
      appBar: const EmptyAppBar(),
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
            const SizedBox(height: 32),
            Form(
              key: formKey,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: Center(
                  child: RoundedWithShadowInput(
                    controller: pinController,
                    focusNode: focusNode,
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
            PrimaryFillButton(
              onPressed: () async {
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
              },
              label: translator.acceptAndContinue,
            ),
          ],
        ),
      ),
    );
  }
}
