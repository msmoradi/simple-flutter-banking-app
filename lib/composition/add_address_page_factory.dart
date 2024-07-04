import 'package:banx/composition/map_address_page_factory.dart';
import 'package:card_order/presentation/view/add_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddAddressPageFactory {
  static const path = "/add_address";

  static AddAddressPage builder(BuildContext context, GoRouterState state) {
    return AddAddressPage(
      onAddAddress: () {
        context.push(
          MapAddressPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (AddAddressPageFactory.path),
        builder: AddAddressPageFactory.builder,
        routes: routes);
  }
}
