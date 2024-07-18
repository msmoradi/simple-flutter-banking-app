import 'package:banx/root/presentation/view/root_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class RootPageFactory {
  static const path = "/root";

  static RootPage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return RootPage(showMessage: showMessage);
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (RootPageFactory.path),
        builder: (ctx, state) {
          return RootPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
