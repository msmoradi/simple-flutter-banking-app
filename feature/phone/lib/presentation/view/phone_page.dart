import 'package:designsystem/widgets/appbar/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:phone/data/datasource/local/login_remote_datasource_impl.dart';
import 'package:phone/data/repository/login_repository_impl.dart';
import 'package:phone/presentation/view/phone_form.dart';

import '../bloc/phone_bloc.dart';

class PhonePage extends StatelessWidget {
  final Function(String, String, int) onVerifyOtp;

  const PhonePage({
    super.key,
    required this.onVerifyOtp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocProvider(
          create: (context) => loginBloc,
          child: PhoneForm(
            onVerifyOtp: onVerifyOtp,
          ),
        ),
      ),
    );
  }
}

PhoneBloc get loginBloc => PhoneBloc(
      loginRepository: LoginRepositoryImpl(
        loginRemoteDataSource: LoginRemoteDataSourceImpl(ApiService()),
      ),
    );
