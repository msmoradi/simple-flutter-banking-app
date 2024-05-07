import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/data/datasource/local/login_remote_datasource_impl.dart';
import 'package:login/data/repository/login_repository_impl.dart';
import 'package:login/presentation/view/login_form.dart';
import 'package:networking/api_service.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  final Function() onSignUpTapped;
  final Function() onForgotPasswordTapped;

  const LoginPage({
    super.key,
    required this.onSignUpTapped,
    required this.onForgotPasswordTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 36, 12, 36),
        child: BlocProvider(
          create: (context) => loginBloc,
          child: LoginForm(
            onSignUpTapped: onSignUpTapped,
            onForgotPasswordTapped: onForgotPasswordTapped,
          ),
        ),
      ),
    );
  }
}

LoginBloc get loginBloc => LoginBloc(
      loginRepository: LoginRepositoryImpl(
        loginRemoteDataSource: LoginRemoteDataSourceImpl(ApiService()),
      ),
    );
