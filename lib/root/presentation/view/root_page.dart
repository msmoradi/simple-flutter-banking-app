import 'package:flutter/material.dart';
import 'package:utils/extension/build_context.dart';

class RootPage extends StatefulWidget {
  const RootPage({
    super.key,
  });

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    final tabItemColor = Theme.of(context).colorScheme.onSecondaryContainer;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _tabController.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: const Icon(
              Icons.home_filled,
              weight: 300,
            ),
            icon: const Icon(
              Icons.home_outlined,
              weight: 300,
            ),
            label: translator.home,
          ),
          BottomNavigationBarItem(
              activeIcon: const Icon(
                Icons.favorite,
                weight: 300,
              ),
              icon: const Icon(
                Icons.favorite_outline,
                weight: 300,
              ),
              label: translator.saved),
          BottomNavigationBarItem(
            activeIcon: const Icon(
              Icons.map,
              weight: 300,
            ),
            icon: const Icon(
              Icons.map_outlined,
              weight: 300,
            ),
            label: translator.tours,
          ),
          BottomNavigationBarItem(
              activeIcon: const Icon(
                Icons.confirmation_num,
                weight: 300,
              ),
              icon: const Icon(
                Icons.confirmation_num_outlined,
                weight: 300,
              ),
              label: translator.booking),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [Container(), Container(), Container(), Container()],
      ),
    );
  }
}
