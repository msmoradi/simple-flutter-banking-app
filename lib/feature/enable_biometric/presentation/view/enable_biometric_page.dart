import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/button/fill/full_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/enable_biometric_bloc.dart';

class EnableBiometricPage extends StatelessWidget {
  final Function(String) showMessage;
  final Function(String) onDeeplinkLanding;
  final String password;

  const EnableBiometricPage({
    super.key,
    required this.showMessage,
    required this.onDeeplinkLanding,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<EnableBiometricBloc>(),
      child: BlocConsumer<EnableBiometricBloc, EnableBiometricState>(
        listener: (context, state) {
          _handleStateChange(context, state);
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
        centerTitle: false,
              toolbarHeight: 0.0,
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/enable_face.png",
                                fit: BoxFit.fitWidth,
                                width: 280,
                                height: 280,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const SizedBox(height: 36),
                          Text(
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                            "فعال‌سازی ورود بایومتریک",
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 70.0),
                            child: Text(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                              textAlign: TextAlign.center,
                              "برای ورود امن و سریع به بنکس می‌توانید از قابلیت تشخیص چهره استفاده کنید",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: PrimaryFillButton(
                            isLoading: state is EnableBiometricInProgress,
                            onPressed: () =>
                                context.read<EnableBiometricBloc>().add(
                                      EnableBiometricSubmitted(
                                        password: password,
                                        authNeeded: true,
                                      ),
                                    ),
                            label: 'فعال‌سازی',
                            fillWidth: false,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: PrimaryOutlineButton(
                            onPressed: () =>
                                context.read<EnableBiometricBloc>().add(
                                      EnableBiometricSubmitted(
                                        password: password,
                                        authNeeded: false,
                                      ),
                                    ),
                            label: 'فعلاً نه',
                            fillWidth: false,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleStateChange(BuildContext context, EnableBiometricState state) {
    switch (state) {
      case final EnableBiometricFailure s:
        {
          showMessage(s.message);
        }
      case final DeepLinkLanding s:
        {
          onDeeplinkLanding(s.deeplink);
        }
    }
  }
}
