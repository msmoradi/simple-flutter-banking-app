import 'package:banx/core/data/datasource/remote/passkey_remote_data_source.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_result_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/domain/entities/passkey_assertion_result.dart';
import 'package:banx/core/domain/entities/passkey_attestation.dart';
import 'package:banx/core/domain/repository/passkey_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PasskeyRepository)
class PasskeyRepositoryImpl implements PasskeyRepository {
  final PasskeyRemoteDataSource remoteDataSource;

  PasskeyRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<PasskeyAssertionResult> register(
      PasskeyAssertionOptionsRequestDTO request) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<PasskeyAttestation> signIn(
      PasskeyAttestationOptionsRequestDTO request) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
