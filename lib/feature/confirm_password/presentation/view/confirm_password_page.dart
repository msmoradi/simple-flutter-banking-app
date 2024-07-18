import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:banx/core/data/datasource/remote/profile_remote_datasource_impl.dart';
import 'package:banx/core/data/repository/authentication_repository_impl.dart';
import 'package:banx/core/data/repository/profile_repository_impl.dart';
import 'package:banx/core/data/repository/token_repository_impl.dart';
import 'package:banx/core/networking/api_service.dart';
import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:banx/feature/confirm_password/presentation/view/confirm_password_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          _handleStateChange(context, state);
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

  void _handleStateChange(BuildContext context, ConfirmPasswordState state) {
    switch (state) {
      case final ConfirmPasswordFailure s:
        {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(s.message)),
            );
        }
      case final HomeLanding s:
        {
          homeLanding();
        }
      case final WaitingLanding s:
        {
          waitingLanding();
        }
      case final FaceDetectionLanding s:
        {
          faceDetectionLanding();
        }
      case final CardOrderingLanding s:
        {
          cardOrderingLanding();
        }
    }
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
