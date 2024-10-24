import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/core/designsystem/widgets/transaction_keypad.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionContent extends StatefulWidget {
  final DepositType selectedType;
  final String value;
  final VoidCallback onActionClick;

  const TransactionContent({
    super.key,
    required this.selectedType,
    required this.value,
    required this.onActionClick,
  });

  @override
  _TransactionContentState createState() => _TransactionContentState();
}

class _TransactionContentState extends State<TransactionContent> {
  void _onKeyTapped(String key) {
    if (!mounted) return;
    context.read<TransactionBloc>().add(AddValueEvent(key: key));
  }

  void _onBackspace() {
    if (!mounted) return;
    context.read<TransactionBloc>().add(const RemoveValueEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('مبلغ انتقال'),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              'assets/icons/calendar-minus.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.value,
                            textDirection: TextDirection.ltr,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          Text(
                            widget.selectedType.unit,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 21),
                    DropdownChipWidget(
                      type: widget.selectedType,
                      onSelectTypeEvent: (type) {
                        context
                            .read<TransactionBloc>()
                            .add(SelectTypeEvent(type));
                      },
                    ),
                    const SizedBox(height: 70),
                    TransactionKeypad(
                      onKeyTapped: _onKeyTapped,
                      onBackspace: _onBackspace,
                      isEnabled: true,
                      showDot:
                          widget.selectedType == DepositType.goldDeposit,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  widget.onActionClick();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  width: 80.0,
                  height: 80.0,
                  child: SvgPicture.asset(
                    'assets/icons/arrow-left.svg',
                    width: 40.0,
                    height: 40.0,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
