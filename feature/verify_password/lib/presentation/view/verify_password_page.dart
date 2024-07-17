import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:verify_password/presentation/view/verify_password_content.dart';

class VerifyPasswordPage extends StatelessWidget {
  final Function() onMainPage;
  final String phoneNumber;
  final String refreshToken;

  const VerifyPasswordPage({
    super.key,
    required this.onMainPage,
    required this.phoneNumber,
    required this.refreshToken,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => verifyPasswordBloc,
      child: BlocConsumer<VerifyPasswordBloc, VerifyPasswordState>(
        listener: (context, state) {
          switch (state) {
            case final VerifyPasswordFailure s:
              {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text(s.message)),
                  );
              }
            case final VerifyPasswordSuccess s:
              {
                onMainPage();
              }
          }
        },
        builder: (context, state) {
          return VerifyPasswordContent(
            state: state,
            phoneNumber: phoneNumber,
            refreshToken: refreshToken,
            errorMessage: state is PasswordError ? state.message : null,
          );
        },
      ),
    );
  }
}

VerifyPasswordBloc get verifyPasswordBloc => VerifyPasswordBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
