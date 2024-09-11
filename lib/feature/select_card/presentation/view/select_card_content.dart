import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/card/credit_card.dart';
import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCardContent extends StatelessWidget {
  final Function() onActionClick;
  final Function(String) showMessage;
  final bool showLoading;
  final String firstName;
  final String lastName;
  final String title;
  final String description;
  final String priceLabel;

  const SelectCardContent({
    super.key,
    required this.onActionClick,
    required this.showMessage,
    required this.firstName,
    required this.lastName,
    required this.title,
    required this.description,
    required this.priceLabel,
    required this.showLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          'سفارش کارت',
        ),
      ),
      body: SafeArea(
        child: LoadingContainer(
          showLoading: showLoading,
          content: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 62.0),
                        child: CreditCard(
                          text: Text(
                            "$firstName\n   $lastName",
                            style: GoogleFonts.satisfy(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          flipOnTouch: false,
                          quarterTurns: 1,
                          scale: 1.4,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.primary),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                priceLabel,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: PrimaryFillButton(
                  label: "سفارش رایگان کارت فلزی",
                  onPressed: onActionClick,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
