import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/feature/check_postal_code/presentation/view/check_postal_code_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CheckPostalCodePageFactory {
  static const path = "/add_address";

  static CheckPostalCodePage builder(
      {required BuildContext context,
      required GoRouterState state,
      required CheckPostalCodeExtra extra,
      required Function(String message) showMessage}) {
    return CheckPostalCodePage(
      showMessage: showMessage,
      onAddAddress: (address) {
        // TODO push add address page
        /*context.push(
          CardDeliveryTimePageFactory.path,
          extra: CardDeliveryTimeExtra(
            address: address,
            cardTypeId: extra.cardTypeId,
            cardShippingTimeSlots: [],
          ),
        );*/
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CheckPostalCodePageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as CheckPostalCodeExtra;
          return CheckPostalCodePageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class CheckPostalCodeExtra {
  final int cardTypeId;

  CheckPostalCodeExtra({
    required this.cardTypeId,
  });
}
