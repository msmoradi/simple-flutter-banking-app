import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/bottombar/custom_bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/widgets/bottombar/custom_bottom_nav_bar.dart';
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
      bottomNavigationBar: CustomBottomNavBar(
        activeColor: tabItemColor,
        inactiveColor: tabItemColor,
        indicatorColor: tabItemColor,
        onTap: (index) {
          setState(() {
            _tabController.index = index;
          });
        },
        items: [
          CustomBottomNavBarItem(
            activeIcon: const Icon(
              Icons.home_filled,
              weight: 300,
            ),
            inactiveIcon: const Icon(
              Icons.home_outlined,
              weight: 300,
            ),
            title: Text(
              translator.home,
              style: TextStyles.bodyTextBody4,
            ),
          ),
          CustomBottomNavBarItem(
            activeIcon: const Icon(
              Icons.favorite,
              weight: 300,
            ),
            inactiveIcon: const Icon(
              Icons.favorite_outline,
              weight: 300,
            ),
            title: Text(
              translator.saved,
              style: TextStyles.bodyTextBody4,
            ),
          ),
          CustomBottomNavBarItem(
            activeIcon: const Icon(
              Icons.map,
              weight: 300,
            ),
            inactiveIcon: const Icon(
              Icons.map_outlined,
              weight: 300,
            ),
            title: Text(
              translator.tours,
              style: TextStyles.bodyTextBody4,
            ),
          ),
          CustomBottomNavBarItem(
            activeIcon: const Icon(
              Icons.confirmation_num,
              weight: 300,
            ),
            inactiveIcon: const Icon(
              Icons.confirmation_num_outlined,
              weight: 300,
            ),
            title: Text(
              translator.booking,
              style: TextStyles.bodyTextBody4,
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(),
          Container(),
          Container(),
          Container()
        ],
      ),
    );
  }
}
