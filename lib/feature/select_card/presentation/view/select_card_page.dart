import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/card/credit_card.dart';
import 'package:banx/core/designsystem/widgets/components/card_personalization_bottom_sheet.dart';
import 'package:flutter/material.dart';

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
  String cardHolderName = "Saeed Moradi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          'سفارش کارت',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62.0),
              child: CreditCard(
                cardHolderName: cardHolderName,
                flipOnTouch: false,
                quarterTurns: 1,
                scale: 1.4,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 26,
            ),
            Text(
              'کارت فلزی  |  رنگ کربنی',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'کارت بانکی، عضو شبکه شتاب',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  enableDrag: false,
                  showDragHandle: true,
                  isScrollControlled: true,
                  useSafeArea: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                  ),
                  context: context,
                  builder: (context) => CardPersonalizationBottomSheet(
                    controller: TextEditingController(text: cardHolderName),
                    onButtonPressed: (value) {
                      Navigator.of(context).pop();
                      setState(() {
                        cardHolderName = value;
                      });
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'نام و نام خانوادگی درج شده روی کارت',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            cardHolderName,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.mode_edit_outlined,
                        size: 16.0,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            PrimaryFillButton(
              label: 'سفارش کارت',
              onPressed: widget.onNext,
            ),
          ],
        ),
      ),
    );
  }
}
