import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/composition/select_address_page_factory.dart';
import 'package:banx/feature/select_card/presentation/view/select_card_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SelectCardPageFactory {
  static const path = "/select_card";

  static SelectCardPage builder({
    required BuildContext context,
    required GoRouterState state,
    required SelectCardExtra? extra,
    required Function(String message) showMessage,
  }) {
    return SelectCardPage(
      showMessage: showMessage,
      onSelectAddress: (addressList, cardTypeId) {
        context.push(
          SelectAddressPageFactory.path,
          extra: SelectAddressExtra(
            addressList: addressList,
            cardTypeId: cardTypeId,
          ),
        );
      },
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
        path: (SelectCardPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as SelectCardExtra?;
          return SelectCardPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class SelectCardExtra {
  final String sessionId;

  SelectCardExtra({
    required this.sessionId,
  });
}
