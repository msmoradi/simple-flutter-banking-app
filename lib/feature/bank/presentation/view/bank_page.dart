import 'package:banx/feature/bank/presentation/bloc/bank_bloc.dart';
import 'package:banx/feature/bank/presentation/view/bank_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BankPage extends StatelessWidget {
  const BankPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<BankBloc>(),
      child: BlocBuilder<BankBloc, BankState>(
        builder: (context, state) {
          return const BankContent();
        },
      ),
    );
  }
}
