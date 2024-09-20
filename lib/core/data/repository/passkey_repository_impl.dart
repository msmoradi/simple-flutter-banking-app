import 'package:banx/core/data/datasource/remote/passkey_remote_data_source.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_result_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_request_dto.dart';
import 'package:banx/core/domain/entities/passkey_assertion_options.dart';
import 'package:banx/core/domain/entities/passkey_assertion_result.dart';
import 'package:banx/core/domain/entities/passkey_attestation.dart';
import 'package:banx/core/domain/entities/passkey_attestation_options.dart';
import 'package:banx/core/domain/repository/passkey_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PasskeyRepository)
class PasskeyRepositoryImpl implements PasskeyRepository {
  final PasskeyRemoteDataSource remoteDataSource;
  final FlutterSecureStorage secureStorage;

  PasskeyRepositoryImpl({
    required this.remoteDataSource,
    required this.secureStorage,
  });

  @override
  Future<PasskeyAssertionOptions> getPasskeyAssertionOptions(
      PasskeyAssertionOptionsRequestDTO request) {
    // TODO: implement getPasskeyAssertionOptions
    throw UnimplementedError();
  }

  @override
  Future<PasskeyAttestationOptions> getPasskeyAttestationOptions(
      PasskeyAttestationOptionsRequestDTO request) {
    // TODO: implement getPasskeyAttestationOptions
    throw UnimplementedError();
  }

  @override
  Future<PasskeyAssertionResult> sendPasskeyAssertionResult(
      PasskeyAssertionResultRequestDTO request) {
    // TODO: implement sendPasskeyAssertionResult
    throw UnimplementedError();
  }

  @override
  Future<PasskeyAttestation> sendPasskeyAttestation(
      PasskeyAttestationRequestDTO request) {
    // TODO: implement sendPasskeyAttestation
    throw UnimplementedError();
  }
}
