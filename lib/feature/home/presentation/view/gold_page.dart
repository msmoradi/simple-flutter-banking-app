import 'package:banx/core/designsystem/widgets/components/action_row.dart';
import 'package:banx/core/designsystem/widgets/components/simple_card_row.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/feature/home/presentation/view/home_content.dart';
import 'package:flutter/material.dart';

class GoldPage extends StatelessWidget {
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

  GoldPage({super.key});

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
                'assets/images/gold_asset_shape.png',
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: double.infinity,
                child: GlassRow(
                  currentPageIndex: 1,
                  title: 'سپرده طلا',
                  subtitle: '۲۰ گرم ~ ۷۴٬۲۵۲٬۰۰۰ تومان',
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
