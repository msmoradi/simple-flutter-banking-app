import 'package:banx/core/designsystem/widgets/components/bank_action_row.dart';
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
    BankActionRow(
      actions: [
        ActionEntity(icon: 'assets/icons/plus.svg', title: 'واریز'),
        ActionEntity(icon: 'assets/icons/arrow-down.svg', title: 'برداشت'),
        ActionEntity(icon: 'assets/icons/exchange.svg', title: 'انتقال'),
        ActionEntity(icon: 'assets/icons/grid.svg', title: 'بیشتر'),
      ],
    ),
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

  final goldWidgetList = [
    const SizedBox(
      height: 24.0,
    ),
    BankActionRow(
      actions: [
        ActionEntity(icon: 'assets/icons/plus.svg', title: 'واریز'),
        ActionEntity(icon: 'assets/icons/arrow-down.svg', title: 'برداشت'),
        ActionEntity(icon: 'assets/icons/exchange.svg', title: 'انتقال'),
        ActionEntity(icon: 'assets/icons/grid.svg', title: 'بیشتر'),
      ],
    ),
    const SizedBox(
      height: 30.0,
    ),
    SimpleCardRow(
      hist: const {
        'نوسان قیمت': "(۰٬۲۵٪) ۱۱٬۴۰۰",
        'قیمت لحظه‌ای': '۳٬۵۴۰٬۰۰۰ تومان',
      },
    ),
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
          'assets/images/lite-coin-1.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-1.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-1.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-1.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-1.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-1.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
  ];

  final saffronWidgetList = [
    const SizedBox(
      height: 24.0,
    ),
    BankActionRow(
      actions: [
        ActionEntity(icon: 'assets/icons/plus.svg', title: 'واریز'),
        ActionEntity(icon: 'assets/icons/arrow-down.svg', title: 'برداشت'),
        ActionEntity(icon: 'assets/icons/exchange.svg', title: 'انتقال'),
        ActionEntity(icon: 'assets/icons/grid.svg', title: 'بیشتر'),
      ],
    ),
    const SizedBox(
      height: 30.0,
    ),
    SimpleCardRow(
      hist: const {
        'نوسان قیمت': "(۰٬۲۵٪) ۱۱٬۴۰۰",
        'قیمت لحظه‌ای': '۳٬۵۴۰٬۰۰۰ تومان',
      },
    ),
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
          'assets/images/lite-coin-4.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-4.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-4.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-4.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-4.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    TransactionCard(
        image: Image.asset(
          'assets/images/lite-coin-4.png',
          width: 48.0,
          height: 48.0,
        ),
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        amount: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
  ];

  List<List<Widget>> finalList = [];

  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    finalList = [widgetList, goldWidgetList, saffronWidgetList];
  }

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
              expandedHeight: 344,
              flexibleSpace: PageView.custom(
                onPageChanged: onPageChanged,
                childrenDelegate: SliverChildListDelegate([
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/cash_banx.png',
                        fit: BoxFit.fitHeight,
                        width: 393,
                        height: 344,
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
                        'assets/images/gold_banx.png',
                        fit: BoxFit.fitHeight,
                        width: 393,
                        height: 344,
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
                        'assets/images/saffron_banx.png',
                        fit: BoxFit.fitHeight,
                        width: 393,
                        height: 344,
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
                    return finalList[_currentPageIndex][index];
                  },
                  childCount: finalList[_currentPageIndex].length,
                ),
              ),
            ),
          ],
        ));
  }
}
