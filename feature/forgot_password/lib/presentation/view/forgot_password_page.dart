import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forgot_password/data/datasource/local/forgot_password_remote_datasource_impl.dart';
import 'package:forgot_password/data/repository/forgot_password_repository_impl.dart';
import 'package:forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:forgot_password/presentation/view/forgot_password_form.dart';
import 'package:networking/api_service.dart';

class ForgotPasswordPage extends StatelessWidget {
  final Function() onForgotPasswordSucceed;

  const ForgotPasswordPage({super.key, required this.onForgotPasswordSucceed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 36, 12, 36),
        child: BlocProvider(
          create: (context) => forgotPasswordBloc,
          child: ForgotPasswordForm(
              onForgotPasswordSucceed: onForgotPasswordSucceed),
        ),
      ),
    );
  }
}

ForgotPasswordBloc get forgotPasswordBloc => ForgotPasswordBloc(
      forgotPasswordRepository: ForgotPasswordRepositoryImpl(
        forgotPasswordRemoteDataSource: ForgotPasswordRemoteDataSourceImpl(ApiService()),
      ),
    );
