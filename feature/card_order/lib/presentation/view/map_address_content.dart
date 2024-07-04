import 'package:card_order/presentation/bloc/card_order_bloc.dart';
import 'package:designsystem/widgets/appbar/app_bar_with_title.dart';
import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/components/address_row.dart';
import 'package:flutter/material.dart';

class MapAddressContent extends StatelessWidget {
  final CardOrderState state;
  final _formKey = GlobalKey<FormState>();

  MapAddressContent({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AppBarWithTitle(title: 'تحویل کارت'),
            const SizedBox(height: 16),
            Image.asset(
              'assets/images/card-banner.png',
              height: 80,
              width: 361,
            ),
            SizedBox(height: 32),
            Text(
              'آدرس دریافت کارت خود را انتخاب کنید',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                AddressRow(
                    address:
                        'شهر تهران، محله اکباتان، خیابان .شکوری غربی، بلوار شهید عبدالرحمان نفیسی ، فازیک بلوک A5، پلاک 0، طبقه 9، واحد 458'),
              ],
            ),
            Spacer(),
            PrimaryFillButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  FocusManager.instance.primaryFocus?.unfocus();
                  /*        context
                  .read<CardOrderBloc>()
                  .add(MapAddressSubmitted());*/
                }
              },
              icon: Icons.add_rounded,
              label: 'آدرس جدید',
              isLoading: state is CardOrderInProgress,
            ),
          ],
        ),
      ),
    );
  }
}
