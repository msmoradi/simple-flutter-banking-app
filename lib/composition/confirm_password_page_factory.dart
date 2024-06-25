import 'package:banx/composition/enable_biometric_page_factory.dart';
import 'package:confirm_password/presentation/view/confirm_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ConfirmPasswordPageFactory {
  static const path = "/confirm_password";

  static ConfirmPasswordPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required ConfirmPasswordExtra extra}) {
    return ConfirmPasswordPage(
      onNext: () {
        context.push(EnableBiometricPageFactory.path);
      },
      phoneNumber: extra.phoneNumber,
      newPassword: extra.newPassword,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (ConfirmPasswordPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as ConfirmPasswordExtra;
          return ConfirmPasswordPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class ConfirmPasswordExtra {
  final String phoneNumber;
  final String newPassword;

  ConfirmPasswordExtra({
    required this.phoneNumber,
    required this.newPassword,
  });
}
