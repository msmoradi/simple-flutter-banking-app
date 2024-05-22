import 'package:data/datasource/remote/authentication_remote_datasource_impl.dart';
import 'package:data/repository/authentication_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:networking/api_service.dart';
import 'package:referral/presentation/view/referral_content.dart';

import '../bloc/referral_bloc.dart';

class ReferralPage extends StatelessWidget {
  final Function() onNext;

  const ReferralPage({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => referralBloc,
      child: BlocConsumer<ReferralBloc, ReferralState>(
        listener: (context, state) {
          if (state is ReferralFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(state.message)),
              );
          } else if (state is ReferralSuccess) {
            onNext();
          }
        },
        builder: (context, state) {
          return ReferralContent(
              state: state,
              onConfirmPressed: (referralCode) {
                Navigator.of(context).pop();
                context
                    .read<ReferralBloc>()
                    .add(ReferralSubmitted(referralCode));
              },
              showLoading: state is ReferralInProgress);
        },
      ),
    );
  }
}

ReferralBloc get referralBloc => ReferralBloc(
      authenticationRepository: AuthenticationRepositoryImpl(
        authenticationRemoteDataSource:
            AuthenticationRemoteDataSourceImpl(ApiService()),
      ),
    );
