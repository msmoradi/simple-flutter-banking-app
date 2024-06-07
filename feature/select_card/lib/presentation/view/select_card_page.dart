import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:select_card/presentation/view/app_card.dart';

class SelectCardPage extends StatefulWidget {
  final Function() onNext;

  const SelectCardPage({
    super.key,
    required this.onNext,
  });

  @override
  State<SelectCardPage> createState() => _SelectCardPageState();
}

class _SelectCardPageState extends State<SelectCardPage> {
  late PageController _pageViewController;
  int _currentPageIndex = 1;

  void _handlePageViewChanged(int currentPageIndex) {
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController(
      initialPage: 1,
      viewportFraction: 0.75,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                  "سفارش کارت",
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 425.6,
              child: PageView(
                controller: _pageViewController,
                onPageChanged: _handlePageViewChanged,
                children: const <Widget>[
                  Center(
                    child: AppCard(
                      imagePath: "assets/images/metal_card_black.png",
                    ),
                  ),
                  Center(
                    child: AppCard(
                      imagePath: "assets/images/metal_card_gold.png",
                    ),
                  ),
                  Center(
                    child: AppCard(
                      imagePath: "assets/images/metal_card_silver.png",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'کارت فلزی رنگ سُربی',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'کارت فلزی باضخامت ۱۰۰۰ میکرون با امکان خرید و انتقال وجه',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _updateCurrentPageIndex(0);
                        },
                        child: CircleItem(
                          isSelected: _currentPageIndex == 0,
                          path: "assets/images/black.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _updateCurrentPageIndex(1);
                        },
                        child: CircleItem(
                          isSelected: _currentPageIndex == 1,
                          path: "assets/images/gold.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _updateCurrentPageIndex(2);
                        },
                        child: CircleItem(
                          isSelected: _currentPageIndex == 2,
                          path: "assets/images/silver.png",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PrimaryFillButton(
                label: 'دریافت کارت فلزی رایگان',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleItem extends StatelessWidget {
  final String path;
  final bool isSelected;

  const CircleItem({super.key, required this.path, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.0,
      height: 42.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(path),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: isSelected
              ? Theme.of(context).colorScheme.outline
              : Theme.of(context).colorScheme.surface,
          width: 4.0,
        ),
      ),
    );
  }
}
