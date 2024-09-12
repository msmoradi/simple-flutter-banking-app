import 'package:banx/composition/card_activation_page_factory.dart';
import 'package:banx/feature/main/presentation/view/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MainPageFactory {
  static const path = "/main";

  static MainPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required MainExtra? extra,
      required Function(String message) showMessage}) {
    return MainPage(
      showMessage: showMessage,
      cardActivation: () {
        context.push(CardActivationPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (MainPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as MainExtra?;
          return MainPageFactory.builder(
              context: ctx,
              state: state,
              extra: extra,
              showMessage: showMessage);
        },
        routes: routes);
  }
}

class MainExtra {
  MainExtra();
}
