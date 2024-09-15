import 'package:banx/core/designsystem/widgets/card/credit_card_demo.dart';
import 'package:banx/core/designsystem/widgets/components/bank_action_row.dart';
import 'package:banx/core/designsystem/widgets/components/card_delivery_state.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/core/domain/entities/card_delivery_entity.dart';
import 'package:banx/feature/bank/presentation/bloc/bank_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BankContent extends StatelessWidget {
  final bool showCardDeliveryButton;
  final bool showLoading;
  final bool showCardDeliveryContainer;
  final String cardFrontPath;
  final String cardDeliveryActionTitle;
  final String cardDeliveryActionAssetPath;
  final Function() onCardDeliveryActionClick;
  final CardDeliveryEntity cardDeliveryEntity;
  final BankCardStatus bankCardStatus;

  final List<Widget> transactions;

  const BankContent({
    super.key,
    required this.showCardDeliveryButton,
    required this.cardDeliveryActionTitle,
    required this.cardDeliveryActionAssetPath,
    required this.onCardDeliveryActionClick,
    required this.cardDeliveryEntity,
    required this.cardFrontPath,
    required this.bankCardStatus,
    required this.showCardDeliveryContainer,
    required this.showLoading,
    required this.transactions,
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
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (child, animation) =>
            ScaleTransition(scale: animation, child: child),
        child: showLoading
            ? Center(
                child: LoadingAnimationWidget.threeRotatingDots(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  size: 70.0,
                ),
              )
            : SafeArea(
                child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24.0,
                    ),
                    Center(
                      child: CreditCardDemo(
                        frontPath: cardFrontPath,
                        flipOnTouch: bankCardStatus == BankCardStatus.activated,
                        quarterTurns: 0,
                        scale: 1.1,
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    BankActionRow(
                      actions: [
                        ActionEntity(
                            icon: 'assets/icons/plus.svg',
                            title: 'واریز',
                            actionClick: onCardDeliveryActionClick),
                        ActionEntity(
                            icon: 'assets/icons/exchange.svg',
                            title: 'انتقال وجه',
                            actionClick: onCardDeliveryActionClick),
                        ActionEntity(
                            icon: 'assets/icons/lock.svg',
                            title: 'رمز کارت',
                            actionClick: onCardDeliveryActionClick),
                        ActionEntity(
                            icon: 'assets/icons/grid.svg',
                            title: 'بیشتر',
                            actionClick: onCardDeliveryActionClick),
                      ],
                    ),
                    showCardDeliveryContainer
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: CardDeliveryContainer(
                              showButton: showCardDeliveryButton,
                              actionTitle: cardDeliveryActionTitle,
                              actionAssetPath: cardDeliveryActionAssetPath,
                              onActionClick: onCardDeliveryActionClick,
                              cardDeliveryEntity: cardDeliveryEntity,
                            ),
                          )
                        : const SizedBox(
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
                          ...transactions,
                          ...List.generate(30, (index) {
                            return Column(children: [
                              TransactionCard(
                                image: CircleAvatar(
                                  radius: 24.0,
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  child: SvgPicture.asset(
                                    'assets/icons/arrow-circle-down-left.svg',
                                    colorFilter: ColorFilter.mode(
                                      Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
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
                                      Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
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
                                amount: '۶۳٬۰۰۰٬۰۰۰ ﷼',
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
                                      Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
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
      ),
    );
  }
}
