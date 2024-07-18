import 'package:banx/composition/card_delivery_page_factory.dart';
import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/feature/card_order/presentation/view/card_delivery_time_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardDeliveryTimePageFactory {
  static const path = "/card_delivery_time";

  static CardDeliveryTimePage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return CardDeliveryTimePage(
        showMessage:showMessage,
      onNext: () {
        context.push(KycStatusPageFactory.path, extra: KycStatusExtra());
      },
      onEditAddress: () {
        context.push(CardDeliveryPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CardDeliveryTimePageFactory.path),
        builder: (ctx, state) {
          return CardDeliveryTimePageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
