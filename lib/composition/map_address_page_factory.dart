import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/feature/card_order/presentation/view/map_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MapAddressPageFactory {
  static const path = "/map_address";

  static MapAddressPage builder(BuildContext context, GoRouterState state) {
    return MapAddressPage(
      onNext: () {
        context.push(CardDeliveryTimePageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (MapAddressPageFactory.path),
        builder: MapAddressPageFactory.builder,
        routes: routes);
  }
}
