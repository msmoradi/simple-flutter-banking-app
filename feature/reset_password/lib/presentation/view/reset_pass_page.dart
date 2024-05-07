import 'package:designsystem/theme/text_styles.dart';
import 'package:domain/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reset_password/presentation/bloc/reset_pass_bloc.dart';
import 'package:reset_password/presentation/view/reset_pass_form.dart';
import 'package:utils/extension/build_context.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final translator = context.getTranslator();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translator.resetPassword,
          style: TextStyles.h6.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 36, 12, 36),
        child: BlocProvider(
          create: (context) {
            return ResetPasswordBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context),
            );
          },
          child: ResetPasswordForm(),
        ),
      ),
    );
  }
}
