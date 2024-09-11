import 'package:banx/core/designsystem/widgets/components/action_row.dart';
import 'package:banx/core/designsystem/widgets/components/custom_card.dart';
import 'package:banx/core/designsystem/widgets/components/simple_card_row.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/feature/home/presentation/view/home_content.dart';
import 'package:flutter/material.dart';

class NormalPage extends StatelessWidget {
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

  NormalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          surfaceTintColor: Colors.transparent,
          stretch: true,
          expandedHeight: kToolbarHeight + 300,
          flexibleSpace: Stack(
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
    );
  }
}
