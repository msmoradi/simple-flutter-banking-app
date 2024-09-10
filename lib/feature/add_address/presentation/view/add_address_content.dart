import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/postal_code_text_field.dart';
import 'package:banx/feature/add_address/presentation/bloc/add_address_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressContent extends StatefulWidget {
  final bool showLoading;

  const AddAddressContent({super.key, required this.showLoading});

  @override
  State<AddAddressContent> createState() => _AddAddressContentState();
}

class _AddAddressContentState extends State<AddAddressContent> {
  final _formKey = GlobalKey<FormState>();
  String? _postalCode = "";

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
          'آدرس دریافت کارت',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Form(
                        key: _formKey,
                        child: PostalCodeTextField(
                          autofocus: true,
                          onSaved: (value) {
                            _postalCode = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();
                    context
                        .read<AddAddressBloc>()
                        .add(CheckPostalCodeSubmitted(_postalCode!));
                  }
                },
                icon: Icon(Icons.search_outlined),
                label: 'بررسی کد پستی',
                isLoading: widget.showLoading,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
