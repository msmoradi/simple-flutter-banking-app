import 'package:confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:confirm_password/presentation/view/confirm_password_content.dart';
import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/datasource/remote/profile_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/profile_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';

class ConfirmPasswordPage extends StatelessWidget {
  final Function() homeLanding;
  final Function() waitingLanding;
  final Function() faceDetectionLanding;
  final Function() cardOrderingLanding;
  final String phoneNumber;
  final String newPassword;

  const ConfirmPasswordPage({
    super.key,
    required this.homeLanding,
    required this.waitingLanding,
    required this.faceDetectionLanding,
    required this.cardOrderingLanding,
    required this.phoneNumber,
    required this.newPassword,
  });

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
          } else if (state is HomeLanding) {
            homeLanding();
          } else if (state is WaitingLanding) {
            waitingLanding();
          } else if (state is FaceDetectionLanding) {
            faceDetectionLanding();
          } else if (state is CardOrderingLanding) {
            cardOrderingLanding();
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
      profileRepository: ProfileRepositoryImpl(
          profileRemoteDataSource: ProfileRemoteDataSourceImpl(
              ApiService(tokenRepository: TokenRepositoryImpl()))),
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
