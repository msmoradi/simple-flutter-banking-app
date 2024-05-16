import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:banx/root/presentation/view/root_page.dart';

class RootPageFactory {
  static const path = "/root";

  static RootPage builder(BuildContext context, GoRouterState state) {
    return const RootPage(
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (RootPageFactory.path),
        builder: RootPageFactory.builder,
        routes: routes);
  }
}
