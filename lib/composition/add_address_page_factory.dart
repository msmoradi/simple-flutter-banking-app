import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/feature/add_address/presentation/view/add_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddAddressPageFactory {
  static const path = "/add_address";

  static AddAddressPage builder(BuildContext context, GoRouterState state) {
    return AddAddressPage(
      onNext: () {
        context.push(
          CardDeliveryTimePageFactory.path,
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
