import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/button/fill/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:referral/presentation/bloc/referral_bloc.dart';
import 'package:referral/presentation/view/referral_bottom_sheet_content.dart';
import 'package:referral/presentation/view/without_referral_bottom_sheet_content.dart';

class ReferralContent extends StatelessWidget {
  final ReferralState state;
  final Function(String) onConfirmPressed;
  final bool showLoading;

  const ReferralContent(
      {super.key,
      required this.state,
      required this.onConfirmPressed,
      required this.showLoading});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.76,
            child: Image.asset(
              "assets/images/referral_frame.png",
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
            'دعوت‌نامه ثبت‌نام',
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
              'ثبت‌نام در بنکس تنها بوسیله کد دعوت امکان پذیر است، جهت ثبت نام از دوستان و آشنایان خودتان کد دعوت دریافت کنید',
            ),
          ),
          const Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: PrimaryFillButton(
                    onPressed: () {
                      showBarModalBottomSheet(
                        enableDrag: true,
                        context: context,
                        backgroundColor:
                            Theme.of(context).colorScheme.surface,
                        builder: (context) => ReferralBottomSheetContent(
                          onConfirmPressed: onConfirmPressed,
                        ),
                      );
                    },
                    isLoading: showLoading,
                    label: 'کد دعوت دارم',
                    fillWidth: false,
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: SecondaryFillButton(
                    onPressed: showLoading
                        ? null
                        : () {
                            showBarModalBottomSheet(
                              enableDrag: true,
                              context: context,
                              backgroundColor:
                                  Theme.of(context).colorScheme.surface,
                              builder: (context) =>
                                  const WithOutReferralBottomSheetContent(),
                            );
                          },
                    label: 'کد ندارم',
                    fillWidth: false,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
