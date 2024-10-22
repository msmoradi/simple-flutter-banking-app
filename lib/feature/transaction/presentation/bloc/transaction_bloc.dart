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
import 'package:intl/intl.dart';

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
    on<AddValueEvent>((event, emit) {
      final currentValue = state.value ?? '';
      String updatedValue;

      if (event.key == '.') {
        if (currentValue.contains('.')) {
          updatedValue = currentValue;
        } else {
          updatedValue = currentValue + event.key;
        }
      } else {
        updatedValue = currentValue + event.key;
      }

      emit(state.copyWith(value: _formatWithCommas(updatedValue)));
    });

    on<RemoveValueEvent>((event, emit) {
      final currentValue = state.value ?? '';
      if (currentValue.isNotEmpty) {
        final updatedValue = currentValue.substring(0, currentValue.length - 1);
        emit(state.copyWith(value: updatedValue));
      }
    });

    on<SelectTypeEvent>((event, emit) {
      emit(state.copyWith(
        selectedType: event.selectedType,
      ));
    });
  }

  String _formatWithCommas(String value) {
    String numericValue = value.replaceAll(',', '');
    if (numericValue.isEmpty) return '';
    if (numericValue.contains('.')) {
      List<String> parts = numericValue.split('.');
      final formatter = NumberFormat.decimalPattern();
      String formattedIntPart = formatter.format(int.tryParse(parts[0]) ?? 0);
      return parts.length > 1
          ? '$formattedIntPart.${parts[1]}'
          : formattedIntPart;
    } else {
      final formatter = NumberFormat.decimalPattern();
      return formatter.format(int.tryParse(numericValue) ?? 0);
    }
  }
}
