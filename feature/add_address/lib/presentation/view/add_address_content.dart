import 'package:add_address/presentation/bloc/add_address_bloc.dart';
import 'package:designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:designsystem/widgets/textfields/postal_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressContent extends StatefulWidget {
  final bool showLoading;
  final Function() onNext;

  AddAddressContent(
      {super.key, required this.showLoading, required this.onNext});

  @override
  State<AddAddressContent> createState() => _AddAddressContentState();
}

class _AddAddressContentState extends State<AddAddressContent> {
  final _formKey = GlobalKey<FormState>();
  String? _postalCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PrimaryFillButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState?.save();
              FocusManager.instance.primaryFocus?.unfocus();
              context
                  .read<AddAddressBloc>()
                  .add(CheckPostalCodeSubmitted(_postalCode!));
            }
          },
          icon: Icons.search_outlined,
          label: 'بررسی کد پستی',
          isLoading: widget.showLoading,
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          'آدرس دریافت کارت',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
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
        ),
      ),
    );
  }
}
