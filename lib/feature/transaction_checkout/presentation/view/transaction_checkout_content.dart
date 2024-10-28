import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionCheckoutContent extends StatefulWidget {
  final String amount;

  final String conversionFee;
  final DepositType sourceDepositType;
  final UserInfo? sourceUserInfo;
  final DepositType destinationDepositType;
  final UserInfo? destinationUserInfo;

  final Function(DepositType) onSourceSelectTypeEvent;
  final Function(DepositType) onDestinationSelectTypeEvent;

  const TransactionCheckoutContent({
    super.key,
    required this.amount,
    required this.conversionFee,
    required this.sourceDepositType,
    required this.sourceUserInfo,
    required this.destinationDepositType,
    required this.destinationUserInfo,
    required this.onSourceSelectTypeEvent,
    required this.onDestinationSelectTypeEvent,
  });

  @override
  State<TransactionCheckoutContent> createState() =>
      _TransactionCheckoutContentState();
}

class _TransactionCheckoutContentState
    extends State<TransactionCheckoutContent> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: const BackButton(),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
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
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'انتقال ${widget.amount}',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مبدأ',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const SizedBox(height: 10),
              widget.sourceUserInfo != null
                  ? TransferRow(
                      dopDownChipTitle: "مبدأ انتقال",
                      userInfo: widget.sourceUserInfo!,
                      depositType: widget.sourceDepositType,
                      onSelectTypeEvent: widget.onSourceSelectTypeEvent)
                  : const SizedBox(height: 10),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مقصد',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const SizedBox(height: 10),
              widget.destinationUserInfo != null
                  ? TransferRow(
                      dopDownChipTitle: "دریافت دارایی در مقصد",
                      userInfo: widget.destinationUserInfo!,
                      depositType: widget.destinationDepositType,
                      onSelectTypeEvent: widget.onDestinationSelectTypeEvent)
                  : const SizedBox(height: 10),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'زمان انتقال',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransferRow extends StatelessWidget {
  final UserInfo userInfo;
  final String dopDownChipTitle;
  final DepositType depositType;
  final Function(DepositType) onSelectTypeEvent;

  const TransferRow(
      {super.key,
      required this.userInfo,
      required this.depositType,
      required this.onSelectTypeEvent,
      required this.dopDownChipTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceBright,
        // Background color similar to the attached image
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(child: UserInfoWidget(userInfo: userInfo)),
          DropdownChipWidget(
            title: dopDownChipTitle,
            type: depositType,
            onSelectTypeEvent: onSelectTypeEvent,
          ),
        ],
      ),
    );
  }
}
