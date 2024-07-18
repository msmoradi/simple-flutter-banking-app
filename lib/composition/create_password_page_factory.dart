import 'package:banx/composition/confirm_password_page_factory.dart';
import 'package:banx/feature/create_password/presentation/view/create_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CreatePasswordPageFactory {
  static const path = "/create_password";

  static CreatePasswordPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required CreatePasswordExtra extra}) {
    return CreatePasswordPage(
      onNext: (phone, password) {
        context.push(
          ConfirmPasswordPageFactory.path,
          extra: ConfirmPasswordExtra(
            phoneNumber: phone,
            newPassword: password,
          ),
        );
      },
      phoneNumber: extra.phoneNumber,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (CreatePasswordPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as CreatePasswordExtra;
          return CreatePasswordPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class CreatePasswordExtra {
  final String phoneNumber;

  CreatePasswordExtra({
    required this.phoneNumber,
  });
}
