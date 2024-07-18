import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:banx/core/data/repository/authentication_repository_impl.dart';
import 'package:banx/core/data/repository/token_repository_impl.dart';
import 'package:banx/core/networking/api_service.dart';
import 'package:banx/feature/phone/presentation/view/phone_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/phone_bloc.dart';

class PhonePage extends StatelessWidget {
  final Function(String, int, int) onVerifyOtp;
  final Function(String, bool) onIdentity;

  const PhonePage({
    super.key,
    required this.onVerifyOtp,
    required this.onIdentity,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<PhoneBloc>(),
      child: BlocConsumer<PhoneBloc, PhoneState>(
        listener: (context, state) {
          if (state is PhoneFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is VerifyOtpSuccess) {
            onVerifyOtp(
              state.phoneNumber,
              state.expiresIn,
              state.codeLength,
            );
          } else if (state is Identity) {
            onIdentity(state.phoneNumber, state.needReferralCode);
          }
        },
        builder: (context, state) {
          return PhoneContent(state: state);
        },
      ),
    );
  }
}
