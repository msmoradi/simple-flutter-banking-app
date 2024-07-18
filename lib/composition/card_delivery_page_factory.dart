import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/feature/card_order/presentation/view/card_delivery_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardDeliveryPageFactory {
  static const path = "/card_delivery";

  static CardDeliveryPage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return CardDeliveryPage(
        showMessage:showMessage,
      onAddAddress: () {
        context.push(
          AddAddressPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CardDeliveryPageFactory.path),
        builder: (ctx, state) {
          return CardDeliveryPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
