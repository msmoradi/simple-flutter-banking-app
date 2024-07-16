import 'package:confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:confirm_password/presentation/view/confirm_password_content.dart';
import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';

class ConfirmPasswordPage extends StatelessWidget {
  final Function() onNext;
  final String phoneNumber;
  final String newPassword;

  const ConfirmPasswordPage(
      {super.key,
      required this.onNext,
      required this.phoneNumber,
      required this.newPassword});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => confirmPasswordBloc,
      child: BlocConsumer<ConfirmPasswordBloc, ConfirmPasswordState>(
        listener: (context, state) {
          if (state is ConfirmPasswordFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is CreatePasswordSuccess) {
            onNext();
          }
        },
        builder: (context, state) {
          return ConfirmPasswordContent(
            state: state,
            newPassword: newPassword,
            phoneNumber: phoneNumber,
          );
        },
      ),
    );
  }
}

ConfirmPasswordBloc get confirmPasswordBloc => ConfirmPasswordBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
