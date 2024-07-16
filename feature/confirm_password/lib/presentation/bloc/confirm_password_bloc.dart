import 'package:bloc/bloc.dart';
import 'package:domain/repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'confirm_password_event.dart';
part 'confirm_password_state.dart';

class ConfirmPasswordBloc
    extends Bloc<ConfirmPasswordEvent, ConfirmPasswordState> {
  final AuthenticationRepository authenticationRepository;

  ConfirmPasswordBloc({
    required this.authenticationRepository,
  }) : super(ConfirmPasswordValidated()) {
    on<ConfirmPasswordSubmitted>(_onConfirmPasswordSubmitted);
  }

  final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  Future<void> onConfirm({
    required String password,
    required String phoneNumber,
  }) async {
    FocusManager.instance.primaryFocus?.unfocus();

    // Store username and password securely
    await _secureStorage.write(
      key: 'username',
      value: phoneNumber,
    );
    await _secureStorage.write(
      key: 'password',
      value: password,
    );
  }

  Future<void> _onConfirmPasswordSubmitted(
    ConfirmPasswordSubmitted event,
    Emitter<ConfirmPasswordState> emit,
  ) async {
    emit(ConfirmPasswordInProgress());
    try {
      final response =
          await authenticationRepository.password(password: event.password);
      response.when(
          success: (response) {
            // getProfile()
          },
          partialSuccess: (message) => emit(ConfirmPasswordFailure(message)),
          networkError: (exception) =>
              emit(ConfirmPasswordFailure(exception.toString())));
    } catch (e) {
      emit(ConfirmPasswordFailure(e.toString()));
    }
  }
}
