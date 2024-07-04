import 'package:banx/composition/add_address_page_factory.dart';
import 'package:card_order/presentation/view/card_delivery_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardDeliveryPageFactory {
  static const path = "/card_delivery";

  static CardDeliveryPage builder(BuildContext context, GoRouterState state) {
    return CardDeliveryPage(
      onAddAddress: () {
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
        path: (CardDeliveryPageFactory.path),
        builder: CardDeliveryPageFactory.builder,
        routes: routes);
  }
}
