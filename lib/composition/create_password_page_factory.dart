import 'package:create_password/presentation/view/create_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CreatePasswordPageFactory {
  static const path = "/create_password";

  static CreatePasswordPage builder(
    BuildContext context,
    GoRouterState state,
  ) {
    return CreatePasswordPage(
      onNext: () {},
      phoneNumber: '09128702779',
      numCells: 4,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (CreatePasswordPageFactory.path),
        builder: (ctx, state) {
          return CreatePasswordPageFactory.builder(ctx, state);
        },
        routes: routes);
  }
}

class CreatePasswordExtra {}
