import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:banx/core/data/repository/repository.dart';
import 'package:banx/core/data/repository/token_repository_impl.dart';
import 'package:banx/core/networking/api_service.dart';
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:banx/feature/verify_otp/presentation/view/verify_otp_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final Function() onMainPage;
  final Function() setPassword;
  final Function(String) verifyPassword;
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;

  const VerifyOtpPage({
    super.key,
    required this.onBackPressed,
    required this.onMainPage,
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
    required this.setPassword,
    required this.verifyPassword,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => verifyOtpBloc,
      child: BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
        listener: (context, state) {
          switch (state) {
            case final VerifyOtpFailure s:
              {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text(s.message)),
                  );
              }
            case final VerifyOtpSuccess s:
              {
                onMainPage();
              }
            case final SetPassword s:
              {
                setPassword();
              }
            case final VerifyPassword s:
              {
                verifyPassword(s.refreshToken);
              }
          }
        },
        builder: (context, state) {
          return VerifyOtpContent(
            state: state,
            phoneNumber: phoneNumber,
            codeLength: codeLength,
            expiresIn: expiresIn,
            errorMessage: state is OtpError ? state.message : null,
          );
        },
      ),
    );
  }
}

VerifyOtpBloc get verifyOtpBloc => VerifyOtpBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
