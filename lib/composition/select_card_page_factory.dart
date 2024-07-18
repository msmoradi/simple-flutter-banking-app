import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/feature/select_card/presentation/view/select_card_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SelectCardPageFactory {
  static const path = "/select_card";

  static SelectCardPage builder({
    required BuildContext context,
    required GoRouterState state,
    required SelectCardExtra? extra,
  }) {
    return SelectCardPage(
      onNext: () {
        context.push(
          AddAddressPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (SelectCardPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as SelectCardExtra?;
          return SelectCardPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class SelectCardExtra {
  final String sessionId;

  SelectCardExtra({
    required this.sessionId,
  });
}
