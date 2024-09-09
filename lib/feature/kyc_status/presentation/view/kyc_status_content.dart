import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:banx/feature/kyc_status/mapper/kyc_state_mapper.dart';
import 'package:banx/feature/kyc_status/model/kyc_status.dart';
import 'package:flutter/material.dart';

class KycStatusContent extends StatelessWidget {
  final Function() onActionClick;
  final Function(String) showMessage;

  final String title;
  final String description;
  final String actionTitle;
  final List<KycStatus> status;

  const KycStatusContent({
    super.key,
    required this.onActionClick,
    required this.showMessage,
    required this.title,
    required this.description,
    required this.actionTitle,
    required this.status,
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
          title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                        description,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ...status.map((item) {
                      return Column(
                        children: [
                          InfoTextRowWidget(
                            iconAsset: item.state.toIconAssets(),
                            title: item.title,
                            subtitle: item.description,
                            backgroundColor:
                                item.state.toBackgroundColor(context),
                          ),
                          const SizedBox(height: 30),
                        ],
                      );
                    }),
                  ],
                ),
              ),
              const SizedBox(height: 34),
              Image.asset(
                "assets/images/kyc_status.png",
                fit: BoxFit.fitWidth,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryFillButton(
          label: actionTitle,
          icon: Icons.lightbulb_outline_rounded,
          onPressed: onActionClick,
        ),
      ),
    );
  }
}
