import 'package:banx/core/designsystem/widgets/components/action_row.dart';
import 'package:banx/core/designsystem/widgets/components/custom_card.dart';
import 'package:banx/core/designsystem/widgets/components/glass_morphism.dart';
import 'package:banx/core/designsystem/widgets/components/simple_card.dart';
import 'package:banx/core/designsystem/widgets/components/simple_card_row.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
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
    const SimpleCardRow(),
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
    const TransactionCard(
        imagePath: 'assets/images/lite-coin-1.png',
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        gram: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    const TransactionCard(
        imagePath: 'assets/images/lite-coin-1.png',
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        gram: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    const TransactionCard(
        imagePath: 'assets/images/lite-coin-1.png',
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        gram: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    const TransactionCard(
        imagePath: 'assets/images/lite-coin-1.png',
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        gram: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    const TransactionCard(
        imagePath: 'assets/images/lite-coin-1.png',
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        gram: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
    const TransactionCard(
        imagePath: 'assets/images/lite-coin-1.png',
        title: 'واریز به سپرده',
        subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
        gram: '۱٬۲ گرم'),
    const SizedBox(
      height: 10.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            stretch: true,
            title: Text(
              'Cash Banx',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Image.asset(
                  'assets/images/circle_avatar.png',
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/bell.svg',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/help-circle.svg',
                ),
              ),
            ],
            expandedHeight: 400.0,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/asset_shape.png',
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(width: double.infinity, child: GlassRow())
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: widgetList[index],
                );
              },
              childCount: widgetList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class GlassRow extends StatelessWidget {
  const GlassRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: Theme.of(context).colorScheme.surface,
      opacity: 0.2,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'سپرده ریال',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                '۷۴٬۲۵۲٬۰۰۰ تومان',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: _buildPageIndicator(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _indicator(bool isActive, BuildContext context) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 4; i++) {
      list.add(i == 2 ? _indicator(true, context) : _indicator(false, context));
    }
    return list;
  }
}
