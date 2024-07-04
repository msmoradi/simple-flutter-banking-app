import 'package:card_order/presentation/bloc/card_order_bloc.dart';
import 'package:designsystem/widgets/appbar/app_bar_with_title.dart';
import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/postal_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressContent extends StatefulWidget {
  final CardOrderState state;

  AddAddressContent({super.key, required this.state});

  @override
  State<AddAddressContent> createState() => _AddAddressContentState();
}

class _AddAddressContentState extends State<AddAddressContent> {
  final _formKey = GlobalKey<FormState>();
  String? _postalCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarWithTitle(title: 'آدرس دریافت کارت'),
            const SizedBox(height: 16),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PostalCodeTextField(
                      autofocus: true,
                      onSaved: (value) {
                        _postalCode = value;
                      },
                    ),
                  ],
                )),
            const Spacer(),
            PrimaryFillButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  FocusManager.instance.primaryFocus?.unfocus();
                  context
                      .read<CardOrderBloc>()
                      .add(CheckPostalCodeSubmitted(_postalCode!));
                }
              },
              icon: Icons.search_outlined,
              label: 'بررسی کد پستی',
              isLoading: widget.state is CardOrderInProgress,
            ),
          ],
        ),
      ),
    );
  }
}
