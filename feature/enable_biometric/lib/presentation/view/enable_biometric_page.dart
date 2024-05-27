import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/button/fill/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class EnableBiometricPage extends StatefulWidget {
  final Function() onNext;

  const EnableBiometricPage({
    super.key,
    required this.onNext,
  });

  @override
  State<EnableBiometricPage> createState() => _EnableBiometricPageState();
}

class _EnableBiometricPageState extends State<EnableBiometricPage> {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _biometricEnabled = false;

  @override
  void initState() {
    super.initState();
    _checkBiometricSupport();
  }

  Future<void> _checkBiometricSupport() async {
    bool canCheckBiometrics = await _localAuth.canCheckBiometrics;
    if (canCheckBiometrics) {
      setState(() {
        _biometricEnabled = true;
      });
    }
  }

  Future<void> enableAuthentication() async {
    if (_biometricEnabled) {
      bool enabled = await _localAuth.authenticate(
        localizedReason: 'Enable biometric authentication for future logins',
      );
      if (enabled) {
        widget.onNext();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          AspectRatio(
            aspectRatio: 393 / 504,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              color: Theme.of(context).colorScheme.surface,
              width: double.infinity,
              child: Image.asset(
                "assets/images/enable_face.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
          ),
          const SizedBox(height: 71),
          Text(
            style: Theme.of(context).textTheme.headlineMedium,
            "فعال‌سازی ورود با چهره",
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Text(
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
                "برای ورود امن و سریع به BANX از ماژول تشخیص چهره استفاده میکنم"),
          ),
          const Spacer(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PrimaryFillButton(
                onPressed: () async {
                  await enableAuthentication();
                },
                label: 'فعال‌سازی',
                fillWidth: false,
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: SecondaryFillButton(
                onPressed: widget.onNext,
                label: 'فعلاً نه',
                fillWidth: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
