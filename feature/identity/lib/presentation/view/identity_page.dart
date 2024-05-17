import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:identity/presentation/bloc/identity_bloc.dart';
import 'package:identity/presentation/view/identity_content.dart';

class IdentityPage extends StatelessWidget {
  final Function(String, String, int) onNext;

  const IdentityPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IdentityBloc(),
      child: BlocConsumer<IdentityBloc, IdentityState>(
        listener: (context, state) {
          if (state is IdentityFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is IdentitySuccess) {
            onNext(state.phoneNumber, state.sessionId, state.numCells);
          }
        },
        builder: (context, state) {
          return IdentityContent(state: state);
        },
      ),
    );
  }
}
