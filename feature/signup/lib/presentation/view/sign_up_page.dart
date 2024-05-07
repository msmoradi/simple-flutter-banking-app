import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:signup/data/datasource/local/sign_up_remote_datasource_impl.dart';
import 'package:signup/data/repository/sign_up_repository_impl.dart';
import 'package:signup/presentation/bloc/sign_up_bloc.dart';
import 'package:signup/presentation/view/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  final Function() onLoginClicked;

  const SignUpPage({super.key, required this.onLoginClicked});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 36, 12, 36),
        child: BlocProvider(
          create: (context) => signUpBloc,
          child: SignUpForm(
            onLoginClicked: onLoginClicked,
          ),
        ),
      ),
    );
  }
}

SignUpBloc get signUpBloc => SignUpBloc(
      signUpRepository: SignUpRepositoryImpl(
        signUpRemoteDataSource: SignUpRemoteDataSourceImpl(ApiService()),
      ),
    );
