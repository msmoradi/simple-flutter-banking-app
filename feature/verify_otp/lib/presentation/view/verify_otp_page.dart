import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:verify_otp/data/datasource/local/verify_otp_remote_datasource_impl.dart';
import 'package:verify_otp/data/repository/verify_otp_repository_impl.dart';
import 'package:verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:verify_otp/presentation/view/verify_otp_content.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final Function() onNext;
  final String phoneNumber;
  final String sessionId;
  final int numCells;

  const VerifyOtpPage(
      {super.key,
      required this.onBackPressed,
      required this.onNext,
      required this.phoneNumber,
      required this.sessionId,
      required this.numCells});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => verifyOtpBloc,
      child: BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
        listener: (context, state) {
          if (state is VerifyOtpFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is VerifyOtpSuccess) {
            onNext();
          }
        },
        builder: (context, state) {
          return VerifyOtpContent(
            state: state,
            phoneNumber: phoneNumber,
            numCells: numCells,
          );
        },
      ),
    );
  }
}

VerifyOtpBloc get verifyOtpBloc => VerifyOtpBloc(
      loginRepository: VerifyOtpRepositoryImpl(
        verifyOtpRemoteDataSource: VerifyOtpRemoteDataSourceImpl(ApiService()),
      ),
    );
