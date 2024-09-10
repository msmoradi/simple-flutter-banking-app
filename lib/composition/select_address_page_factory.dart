import 'package:banx/composition/add_address_page_factory.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/select_address/presentation/view/select_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SelectAddressPageFactory {
  static const path = "/select_address";

  static SelectAddressPage builder({
    required BuildContext context,
    required GoRouterState state,
    required SelectAddressExtra extra,
    required Function(String message) showMessage,
  }) {
    return SelectAddressPage(
      showMessage: showMessage,
      addressList: extra.addressList,
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
        path: (SelectAddressPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra != null
              ? state.extra as SelectAddressExtra
              : SelectAddressExtra(addressList: []);

          return SelectAddressPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class SelectAddressExtra {
  final List<AddressEntity> addressList;

  SelectAddressExtra({
    required this.addressList,
  });
}
