import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:verify_otp/data/datasource/local/verify_otp_remote_datasource_impl.dart';
import 'package:verify_otp/data/repository/verify_otp_repository_impl.dart';
import 'package:verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:verify_otp/presentation/view/verify_otp_form.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final String phoneNumber;
  final String sessionId;
  final int numCells;

  const VerifyOtpPage(
      {super.key,
      required this.onBackPressed,
      required this.phoneNumber,
      required this.sessionId,
      required this.numCells});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: onBackPressed,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocProvider(
          create: (context) => loginBloc,
          child: VerifyOtpForm(
            phoneNumber: phoneNumber,
            numCells: numCells,
          ),
        ),
      ),
    );
  }
}

VerifyOtpBloc get loginBloc => VerifyOtpBloc(
      loginRepository: VerifyOtpRepositoryImpl(
        verifyOtpRemoteDataSource: VerifyOtpRemoteDataSourceImpl(ApiService()),
      ),
    );
