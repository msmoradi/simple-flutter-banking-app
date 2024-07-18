import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/feature/add_address/presentation/view/add_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddAddressPageFactory {
  static const path = "/add_address";

  static AddAddressPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required Function(String message) showMessage}) {
    return AddAddressPage(
        showMessage:showMessage,
      onNext: () {
        context.push(
          CardDeliveryTimePageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (AddAddressPageFactory.path),
        builder: (ctx, state) {
          return AddAddressPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
