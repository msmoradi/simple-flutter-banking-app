import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/postal_code_text_field.dart';
import 'package:banx/feature/add_address/presentation/bloc/add_address_bloc.dart';
import 'package:banx/feature/check_postal_code/presentation/bloc/check_postal_code_bloc.dart';
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                          'درصورت نیاز آدرس را ویرایش و ذخیره کنید',
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              autofocus: true,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              readOnly: true,
                              enabled: false,
                              onFieldSubmitted: (text) {},
                              decoration: const InputDecoration(
                                hintText: "تهران، تهران، پیروزی",
                              ),
                              validator: (value) {
                                return value?.isNotEmpty == true
                                    ? null
                                    : 'نام باید پر شود';
                              },
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextFormField(
                              autofocus: true,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              onFieldSubmitted: (text) {},
                              decoration: const InputDecoration(
                                hintText: "خیابان اصلی و فرعی",
                              ),
                              validator: (value) {
                                return value?.isNotEmpty == true
                                    ? null
                                    : 'نام باید پر شود';
                              },
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    autofocus: true,
                                    maxLines: null,
                                    onFieldSubmitted: (text) {},
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      hintText: "پلاک",
                                    ),
                                    validator: (value) {
                                      return value?.isNotEmpty == true
                                          ? null
                                          : 'نام باید پر شود';
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    autofocus: true,
                                    keyboardType: TextInputType.text,
                                    maxLines: null,
                                    onFieldSubmitted: (text) {},
                                    decoration: const InputDecoration(
                                      hintText: "نام ساختمان یا بلوک",
                                    ),
                                    validator: (value) {
                                      return value?.isNotEmpty == true
                                          ? null
                                          : 'نام باید پر شود';
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    autofocus: true,
                                    keyboardType: TextInputType.number,
                                    maxLines: null,
                                    onFieldSubmitted: (text) {},
                                    decoration: const InputDecoration(
                                      hintText: "طبقه",
                                    ),
                                    validator: (value) {
                                      return value?.isNotEmpty == true
                                          ? null
                                          : 'نام باید پر شود';
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 16.0,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    autofocus: true,
                                    keyboardType: TextInputType.number,
                                    maxLines: null,
                                    onFieldSubmitted: (text) {},
                                    decoration: const InputDecoration(
                                      hintText: "واحد",
                                    ),
                                    validator: (value) {
                                      return value?.isNotEmpty == true
                                          ? null
                                          : 'نام باید پر شود';
                                    },
                                  ),
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
              const SizedBox(height: 16),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();
                    context
                        .read<AddAddressBloc>()
                        .add(AddAddressSubmitted(_postalCode!));
                  }
                },
                label: 'تأیید و ادامه',
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
