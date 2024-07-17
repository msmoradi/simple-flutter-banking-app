import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/datasource/remote/profile_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:data/repository/profile_repository_impl.dart';
import 'package:data/repository/token_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:verify_password/presentation/view/verify_password_content.dart';

class VerifyPasswordPage extends StatelessWidget {
  final Function() homeLanding;
  final Function() waitingLanding;
  final Function() faceDetectionLanding;
  final Function() cardOrderingLanding;

  const VerifyPasswordPage({
    super.key,
    required this.homeLanding,
    required this.waitingLanding,
    required this.faceDetectionLanding,
    required this.cardOrderingLanding,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => verifyPasswordBloc,
      child: BlocConsumer<VerifyPasswordBloc, VerifyPasswordState>(
        listener: (context, state) {
          _handleStateChange(context, state);
        },
        builder: (context, state) {
          return VerifyPasswordContent(
            state: state,
            errorMessage: state is PasswordError ? state.message : null,
          );
        },
      ),
    );
  }

  void _handleStateChange(BuildContext context, VerifyPasswordState state) {
    switch (state) {
      case final VerifyPasswordFailure s:
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

VerifyPasswordBloc get verifyPasswordBloc => VerifyPasswordBloc(
      profileRepository: ProfileRepositoryImpl(
          profileRemoteDataSource: ProfileRemoteDataSourceImpl(
              ApiService(tokenRepository: TokenRepositoryImpl()))),
      tokenRepository: TokenRepositoryImpl(),
      authenticationRepository: AuthenticationRepositoryImpl(
        tokenRepository: TokenRepositoryImpl(),
        authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
            ApiService(tokenRepository: TokenRepositoryImpl())),
      ),
    );
