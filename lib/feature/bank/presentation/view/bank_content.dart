import 'package:banx/core/designsystem/widgets/card/credit_card.dart';
import 'package:banx/core/designsystem/widgets/components/action_row.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankContent extends StatefulWidget {
  const BankContent({super.key});

  @override
  State<BankContent> createState() => _BankContentState();
}

class _BankContentState extends State<BankContent> {
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: CreditCard(
                  text: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "موجودی حساب",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        textDirection: TextDirection.rtl,
                        "۱۲٬۴۰۵۶٬۹۸۷ ﷼",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ],
                  ),
                  flipOnTouch: false,
                  quarterTurns: 0,
                  scale: 1.1,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              const ActionRow(),
              const SizedBox(
                height: 30.0,
              ),
              const TitleRow(
                title: 'تراکنش‌ها',
              ),
              const SizedBox(
                height: 30.0,
              ),
              TransactionCard(
                image: CircleAvatar(
                  radius: 24.0,
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  child: SvgPicture.asset(
                    'assets/icons/arrow-circle-down-left.svg',
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSurfaceVariant,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                title: 'واریز به سپرده',
                subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
                amount: '۵٬۵۰۰٬۰۰۰ ﷼',
              ),
              const SizedBox(
                height: 10.0,
              ),
              TransactionCard(
                  image: CircleAvatar(
                    radius: 24.0,
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: SvgPicture.asset(
                      'assets/icons/arrow-circle-up-right.svg',
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurfaceVariant,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  title: 'برداشت از سپرده',
                  subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
                  amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
              const SizedBox(
                height: 10.0,
              ),
              TransactionCard(
                image: CircleAvatar(
                  radius: 24.0,
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  child: SvgPicture.asset(
                    'assets/icons/arrow-circle-down-left.svg',
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                title: 'واریز به سپرده',
                subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
                amount: '۶۳٬۰۰۰٬۰۰۰ ﷼',
              ),
              const SizedBox(
                height: 10.0,
              ),
              TransactionCard(
                image: CircleAvatar(
                  radius: 24.0,
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  child: SvgPicture.asset(
                    'assets/icons/arrow-circle-down-left.svg',
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                title: 'واریز به سپرده',
                subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
                amount: '۶٬۷۵۲٬۰۰۰ ﷼',
              ),
              const SizedBox(
                height: 10.0,
              ),
              TransactionCard(
                  image: CircleAvatar(
                    radius: 24.0,
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    child: SvgPicture.asset(
                      'assets/icons/arrow-circle-down-left.svg',
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  title: 'واریز به سپرده',
                  subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
                  amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
              const SizedBox(
                height: 10.0,
              ),
              TransactionCard(
                  image: CircleAvatar(
                    radius: 24.0,
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    child: SvgPicture.asset(
                      'assets/icons/arrow-circle-down-left.svg',
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  title: 'واریز به سپرده',
                  subtitle: 'شنبه، ۲۳ تیر ۱۴۰۳ | ۱۲:۲۲',
                  amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
