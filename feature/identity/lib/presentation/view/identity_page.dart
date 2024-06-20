import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:identity/presentation/bloc/identity_bloc.dart';
import 'package:identity/presentation/view/identity_content.dart';
import 'package:networking/api_service.dart';

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
          authenticationRemoteDataSource:
              AuthenticationRemoteDataSourceImpl(ApiService()),
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
            onVerifyOtp(300, 6);
          }
        },
        builder: (context, state) {
          return IdentityContent(
            state: state,
            phoneNumber: phoneNumber,
          );
        },
      ),
    );
  }
}
