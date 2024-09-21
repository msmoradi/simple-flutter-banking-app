import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/domain/entities/passkey_assertion_result.dart';
import 'package:banx/core/domain/entities/passkey_attestation.dart';

abstract class PasskeyRepository {

  @override
  Future<PasskeyAssertionResult> register(
      PasskeyAssertionOptionsRequestDTO request);

  @override
  Future<PasskeyAttestation> signIn(
      PasskeyAttestationOptionsRequestDTO request);
}
