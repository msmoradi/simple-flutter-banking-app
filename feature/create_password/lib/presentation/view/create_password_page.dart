import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';

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
  final formKey = GlobalKey<FormState>();
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  Future<void> onConfirm(String value) async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();
      widget.onNext(widget.phoneNumber, value);
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
                    validator: (value) {
                      return value?.length == 4 ? null : 'Pin is incorrect';
                    },
                    length: 4,
                    onCompleted: onConfirm,
                  ),
                ),
              ),
            ),
            const Spacer(),
            PrimaryFillButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onConfirm(pinController.text);
                }
              },
              label: translator.acceptAndContinue,
            )
          ],
        ),
      ),
    );
  }
}
