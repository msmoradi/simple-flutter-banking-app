import 'package:banx/core/designsystem/widgets/card/credit_card.dart';
import 'package:banx/core/designsystem/widgets/card/credit_card_demo.dart';
import 'package:banx/core/designsystem/widgets/components/action_row.dart';
import 'package:banx/core/designsystem/widgets/components/card_delivery_state.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/core/domain/entities/card_delivery_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankContent extends StatelessWidget {
  final bool showCardDeliveryButton;
  final String cardDeliveryActionTitle;
  final String cardDeliveryActionAssetPath;
  final Function() onCardDeliveryActionClick;
  final CardDeliveryEntity cardDeliveryEntity;

  const BankContent({
    super.key,
    required this.showCardDeliveryButton,
    required this.cardDeliveryActionTitle,
    required this.cardDeliveryActionAssetPath,
    required this.onCardDeliveryActionClick,
    required this.cardDeliveryEntity,
  });

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
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24.0,
            ),
            const Center(
              child: CreditCardDemo(
                flipOnTouch: true,
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
            CardDeliveryContainer(
              showButton: showCardDeliveryButton,
              actionTitle: cardDeliveryActionTitle,
              actionAssetPath: cardDeliveryActionAssetPath,
              onActionClick: onCardDeliveryActionClick,
              cardDeliveryEntity: cardDeliveryEntity,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleRow(
                    title: 'تراکنش‌ها',
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ...List.generate(30, (index) {
                    return Column(children: [
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
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .surfaceContainerHighest,
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
                        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼',
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
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .surfaceContainerHighest,
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
                        amount: '۷۲٬۴۴۰٬۰۰۰ ﷼',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TransactionCard(
                          image: CircleAvatar(
                            radius: 24.0,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
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
                          amount: '۵۳٬۰۰۰٬۰۰۰ ﷼'),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ]);
                  }),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
