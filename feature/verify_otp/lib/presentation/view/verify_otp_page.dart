import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:verify_otp/presentation/view/verify_otp_content.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final Function() onMainPage;
  final Function() setPassword;
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
        authenticationRemoteDataSource:
            AuthenticationRemoteDataSourceImpl(ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
