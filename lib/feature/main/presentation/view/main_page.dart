import 'package:banx/feature/main/presentation/bloc/main_bloc.dart';
import 'package:banx/feature/main/presentation/view/main_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return MainContent();
        },
      ),
    );
  }
}
