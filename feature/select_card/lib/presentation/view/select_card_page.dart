import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/card/credit_card.dart';
import 'package:designsystem/widgets/components/card_personalization_bottom_sheet.dart';
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
  final TextEditingController cardHolderNameController =
      TextEditingController(text: "Saeed Moradi");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                "سفارش کارت",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CreditCard(cardHolderNameController: cardHolderNameController),
            const SizedBox(
              height: 20,
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
            const Spacer(),
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
                    initialName: cardHolderNameController.text,
                    onButtonPressed: (value) {
                      Navigator.of(context).pop();
                      cardHolderNameController.text = value;
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
                            cardHolderNameController.text,
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
              height: 16,
            ),
            PrimaryFillButton(
              label: 'سفارش کارت',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
