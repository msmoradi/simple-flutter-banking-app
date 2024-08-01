import 'package:banx/feature/home/presentation/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const Center(child: Text('دستیار')),
        const Center(child: Text('کارت')),
        const HomePage(),
        const Center(child: Text('انتقال')),
        const Center(child: Text('تنظیمات')),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/wave.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/wave.svg',
                colorFilter:
                    const ColorFilter.mode(Color(0XffC2904C), BlendMode.srcIn),
              ),
            ),
            label: 'دستیار',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/credit-card.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/credit-card.svg',
                colorFilter:
                    const ColorFilter.mode(Color(0XffC2904C), BlendMode.srcIn),
              ),
            ),
            label: 'کارت',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/banx.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/banx.svg',
                colorFilter:
                    const ColorFilter.mode(Color(0XffC2904C), BlendMode.srcIn),
              ),
            ),
            label: 'بنکس',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/exchange.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/exchange.svg',
                colorFilter:
                    const ColorFilter.mode(Color(0XffC2904C), BlendMode.srcIn),
              ),
            ),
            label: 'انتقال',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/user-01.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/user-01.svg',
                colorFilter:
                    const ColorFilter.mode(Color(0XffC2904C), BlendMode.srcIn),
              ),
            ),
            label: 'تنظیمات',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0XffC2904C),
        unselectedItemColor: Theme.of(context).colorScheme.onSurfaceVariant,
        selectedLabelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.normal,
            ),
        onTap: _onItemTapped,
      ),
    );
  }
}
