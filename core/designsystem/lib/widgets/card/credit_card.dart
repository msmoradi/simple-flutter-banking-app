import 'package:designsystem/widgets/card/color_styles.dart';
import 'package:designsystem/widgets/card/special_fa_text.dart';
import 'package:designsystem/widgets/card/special_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  final TextEditingController cardHolderNameController;

  const CreditCard({super.key, required this.cardHolderNameController});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  ColorStyle appColor = ColorStyle();
  FlipCardController flipCardController = FlipCardController();
  final TextEditingController cardNumberController =
      TextEditingController(text: "6219 8619 xxxx xxxx");
  final TextEditingController cardExpiryDateController =
      TextEditingController(text: "xx xx");
  final TextEditingController cardCvvController =
      TextEditingController(text: "xxx");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1365 / 3,
      width: 780 / 2.60,
      child: FlipCard(
        controller: flipCardController,
        fill: Fill.fillFront,
        direction: FlipDirection.HORIZONTAL,
        front: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(350 / 20),
            color: appColor.appColor.fronBackgroundColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/cheap.png',
                height: 60,
              ),
              const SizedBox(height: 5),
              const SpecialText(
                'bank, but lovely',
              ),
              const SizedBox(height: 5),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/images/blue-logo.png',
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
        back: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(350 / 20),
            color: appColor.appColor.backBackgroundColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    RotatedBox(
                      quarterTurns: 3,
                      child: SpecialText("bluebank.com",
                          size: 10, color: appColor.appColor.backTextColor),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                height: 1050 / 3,
                width: 45,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 40),
                    SpecialFaText(
                        widget.cardHolderNameController.text.replaceAll(" ", "\n"),
                        size: 18,
                        fontWeight: FontWeight.w500,
                        color: appColor.appColor.backTextColor),

                    const SizedBox(height: 10),

                    SpecialText(
                        cardNumberController.text
                            .replaceAll(" ", "\n")
                            .toString(),
                        size: 18,
                        color: appColor.appColor.backTextColor),

                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SpecialText('EXP',
                                size: 12,
                                color: appColor.appColor.backTextColor),
                            SpecialText(cardExpiryDateController.text,
                                size: 14,
                                color: appColor.appColor.backTextColor),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SpecialText('CVV2',
                                size: 12,
                                color: appColor.appColor.backTextColor),
                            SpecialText(cardCvvController.text,
                                size: 14,
                                color: appColor.appColor.backTextColor),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    // logo saman bank
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SpecialText(
                              'Poweres by: ',
                              size: 8,
                              color: appColor.appColor.backTextColor,
                            ),
                            SpecialText(
                              'SamanBank',
                              color: Colors.blueGrey.shade800,
                              size: 14,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Image.asset(
                          'assets/images/saman-bank.png',
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
