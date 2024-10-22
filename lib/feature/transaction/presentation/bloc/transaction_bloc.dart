import 'dart:async';

import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/utils/extension/strings.dart';
import 'package:banx/core/utils/localauth/local_auth_helper.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_state.dart';
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'transaction_event.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final AuthenticationRepository authenticationRepository;
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;
  final LocalAuthHelper localAuthentication;

  TransactionBloc({
    required this.authenticationRepository,
    required this.tokenRepository,
    required this.profileRepository,
    required this.localAuthentication,
  }) : super(const TransactionState(status: TransactionStatus.loading)) {
    on<SelectTypeEvent>((event, emit) {
      emit(state.copyWith(selectedType: event.selectedType));
    });
  }
}
