import 'package:banx/core/designsystem/widgets/components/action_row.dart';
import 'package:banx/core/designsystem/widgets/components/custom_card.dart';
import 'package:banx/core/designsystem/widgets/components/dot_indicator_row.dart';
import 'package:banx/core/designsystem/widgets/components/simple_card_row.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/feature/home/presentation/view/glass_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final widgetList = [
    const SizedBox(
      height: 24.0,
    ),
    const ActionRow(),
    const SizedBox(
      height: 30.0,
    ),
    SimpleCardRow(
      hist: const {
        'بازدهی سرمایه شما': '٪۲۴ روز شمار',
        'درآمد شما تا کنون': '۳٬۵۴۰٬۰۰۰+ تومان',
      },
    ),
    const SizedBox(
      height: 16.0,
    ),
    const CustomCard(),
    const SizedBox(
      height: 30.0,
    ),
    const TitleRow(
      title: 'تراکنش‌ها',
    ),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-2.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ تومان'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-3.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'برداشت از سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱۰٬۰۰۰٬۰۰۰ تومان'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-2.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۶۳٬۰۰۰٬۰۰۰ تومان'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-2.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۸۲٬۲۰۰٬۰۰۰ تومان'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-3.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'برداشت از سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۶٬۷۵۲٬۰۰۰ تومان'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-2.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۶٬۹۳۲٬۰۰۰ تومان'),
    const SizedBox(
      height: 10.0,
    ),
  ];

  int _currentPageIndex = 0;

  void onPageChanged(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'روز بخیر مهرداد!',
          ),
          titleTextStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
          centerTitle: false,
          leadingWidth: 48.0,
          titleSpacing: 6.0,
          leading: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/images/circle_avatar.png',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/bell.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/help-circle.svg',
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              surfaceTintColor: Colors.transparent,
              stretch: true,
              expandedHeight: kToolbarHeight + 300,
              flexibleSpace: PageView.custom(
                onPageChanged: onPageChanged,
                childrenDelegate: SliverChildListDelegate([
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/asset_shape.png',
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: GlassRow(
                          currentPageIndex: 0,
                          subtitle: '۷۴٬۲۵۲٬۰۰۰ تومان',
                          title: 'سپرده ضد تورم',
                        ),
                      )
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/gold_asset_shape.png',
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: GlassRow(
                          currentPageIndex: 1,
                          subtitle: '۲۰ گرم ~ ۷۴٬۲۵۲٬۰۰۰ تومان',
                          title: 'سپرده طلا',
                        ),
                      )
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/asset_shape.png',
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: GlassRow(
                          currentPageIndex: 2,
                          subtitle: '۵۰۰ گرم ~ ۵۲٬۳۱۰٬۵۰۰ تومان',
                          title: 'سپرده زعفران',
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              sliver: SliverToBoxAdapter(
                child: Center(
                    child:
                        DotIndicatorRow(currentPageIndex: _currentPageIndex)),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return widgetList[index];
                  },
                  childCount: widgetList.length,
                ),
              ),
            ),
          ],
        ));
  }
}
