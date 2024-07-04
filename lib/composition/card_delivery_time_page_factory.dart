import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:card_order/presentation/view/card_delivery_time_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardDeliveryTimePageFactory {
  static const path = "/card_delivery_time";

  static CardDeliveryTimePage builder(
      BuildContext context, GoRouterState state) {
    return CardDeliveryTimePage(
      onNext: () {
        context.push(KycStatusPageFactory.path, extra: KycStatusExtra());
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
        path: (CardDeliveryTimePageFactory.path),
        builder: CardDeliveryTimePageFactory.builder,
        routes: routes);
  }
}
