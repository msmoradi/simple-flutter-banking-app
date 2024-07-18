import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:banx/core/data/repository/authentication_repository_impl.dart';
import 'package:banx/core/data/repository/token_repository_impl.dart';
import 'package:banx/core/networking/api_service.dart';
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart';
import 'package:banx/feature/identity/presentation/view/identity_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdentityPage extends StatelessWidget {
  final bool needReferralCode;
  final String phoneNumber;
  final Function(int, int) onVerifyOtp;

  const IdentityPage({
    super.key,
    required this.onVerifyOtp,
    required this.needReferralCode,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IdentityBloc(
        authenticationRepository: AuthenticationRepositoryImpl(
          tokenRepository: TokenRepositoryImpl(),
          authenticationRemoteDataSource: AuthenticationRemoteDataSourceImpl(
              ApiService(tokenRepository: TokenRepositoryImpl())),
        ),
      ),
      child: BlocConsumer<IdentityBloc, IdentityState>(
        listener: (context, state) {
          if (state is IdentityFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is IdentitySuccess) {
            onVerifyOtp(
              state.signUpEntity.expiresIn,
              state.signUpEntity.codeLength,
            );
          }
        },
        builder: (context, state) {
          return IdentityContent(
            state: state,
            phoneNumber: phoneNumber,
            needReferralCode: needReferralCode,
          );
        },
      ),
    );
  }
}
