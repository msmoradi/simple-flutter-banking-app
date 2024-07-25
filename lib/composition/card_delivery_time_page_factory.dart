import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/feature/card_order/presentation/view/card_delivery_time_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardDeliveryTimePageFactory {
  static const path = "/card_delivery_time";

  static CardDeliveryTimePage builder({
    required BuildContext context,
    required GoRouterState state,
    required CardDeliveryTimeExtra extra,
    required Function(String message) showMessage,
  }) {
    return CardDeliveryTimePage(
      address: extra.address,
      showMessage: showMessage,
      onNext: () {
        context.push(KycStatusPageFactory.path, extra: KycStatusExtra());
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
          final extra = state.extra as CardDeliveryTimeExtra;
          return CardDeliveryTimePageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class CardDeliveryTimeExtra {
  final String address;

  CardDeliveryTimeExtra({
    required this.address,
  });
}
