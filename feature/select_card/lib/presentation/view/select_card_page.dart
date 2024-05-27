import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:select_card/presentation/view/app_card.dart';
import 'package:select_card/presentation/view/flip_card.dart';

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
  bool _showFrontSide = true;
  int _selectedIndex = 1;
  String _frontCard = "assets/images/metal_card_gold.png";
  String _backCard = "assets/images/metal_card_silver.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
                "سفارش کارت",
              ),
            ),
            SizedBox(
              height: 425.6,
              child: FlipCard(
                showFrontSide: _showFrontSide,
                frontCard: AppCard(imagePath: _frontCard),
                backCard: AppCard(imagePath: _backCard),
              ),
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
                          //do what you want here
                          setState(() {
                            if (_selectedIndex != 0) {
                              _selectedIndex = 0;
                              if (_showFrontSide) {
                                _backCard =
                                    "assets/images/metal_card_black.png";
                              } else {
                                _frontCard =
                                    "assets/images/metal_card_black.png";
                              }
                              _showFrontSide = !_showFrontSide;
                            }
                          });
                        },
                        child: CircleItem(
                          isSelected: _selectedIndex == 0,
                          path: "assets/images/black.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //do what you want here
                          setState(() {
                            if (_selectedIndex != 1) {
                              _selectedIndex = 1;
                              if (_showFrontSide) {
                                _backCard = "assets/images/metal_card_gold.png";
                              } else {
                                _frontCard =
                                    "assets/images/metal_card_gold.png";
                              }
                              _showFrontSide = !_showFrontSide;
                            }
                          });
                        },
                        child: CircleItem(
                          isSelected: _selectedIndex == 1,
                          path: "assets/images/gold.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //do what you want here
                          setState(() {
                            if (_selectedIndex != 2) {
                              _selectedIndex = 2;
                              if (_showFrontSide) {
                                _backCard =
                                    "assets/images/metal_card_silver.png";
                              } else {
                                _frontCard =
                                    "assets/images/metal_card_silver.png";
                              }
                              _showFrontSide = !_showFrontSide;
                            }
                          });
                        },
                        child: CircleItem(
                          isSelected: _selectedIndex == 2,
                          path: "assets/images/silver.png",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryFillButton(
          label: 'دریافت کارت فلزی رایگان',
          onPressed: () {},
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
