import 'package:banx/feature/main/presentation/view/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MainPageFactory {
  static const path = "/main";

  static MainPage builder(
    BuildContext context,
    GoRouterState state,
    MainExtra? extra,
  ) {
    return MainPage();
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (MainPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as MainExtra?;
          return MainPageFactory.builder(ctx, state, extra);
        },
        routes: routes);
  }
}

class MainExtra {
  MainExtra();
}
