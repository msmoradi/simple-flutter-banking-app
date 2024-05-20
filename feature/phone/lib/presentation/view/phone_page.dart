import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:phone/data/datasource/local/login_remote_datasource_impl.dart';
import 'package:phone/data/repository/login_repository_impl.dart';
import 'package:phone/presentation/view/phone_content.dart';

import '../bloc/phone_bloc.dart';

class PhonePage extends StatelessWidget {
  final Function(String, String, int) onVerifyOtp;

  const PhonePage({
    super.key,
    required this.onVerifyOtp,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginBloc,
      child: BlocConsumer<PhoneBloc, PhoneState>(
        listener: (context, state) {
          if (state is PhoneFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is PhoneSuccess) {
            onVerifyOtp(state.phoneNumber, state.sessionId, state.numCells);
          }
        },
        builder: (context, state) {
          return PhoneContent(state: state);
        },
      ),
    );
  }
}

PhoneBloc get loginBloc => PhoneBloc(
      loginRepository: AuthenticationRepositoryImpl(
        loginRemoteDataSource: AuthenticationRemoteDataSourceImpl(ApiService()),
      ),
    );
