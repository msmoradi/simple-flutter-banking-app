import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/feature/card_order/presentation/view/map_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MapAddressPageFactory {
  static const path = "/map_address";

  static MapAddressPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required Function(String message) showMessage,}) {
    return MapAddressPage(
        showMessage:showMessage,
      onNext: () {
        context.push(CardDeliveryTimePageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (MapAddressPageFactory.path),
        builder: (ctx, state) {
          return MapAddressPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
