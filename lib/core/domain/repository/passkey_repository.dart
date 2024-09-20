
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_result_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_request_dto.dart';
import 'package:banx/core/domain/entities/passkey_assertion_options.dart';
import 'package:banx/core/domain/entities/passkey_assertion_result.dart';
import 'package:banx/core/domain/entities/passkey_attestation.dart';
import 'package:banx/core/domain/entities/passkey_attestation_options.dart';

abstract class PasskeyRepository {
  Future<PasskeyAttestation> sendPasskeyAttestation(
      PasskeyAttestationRequestDTO request);

  Future<PasskeyAttestationOptions> getPasskeyAttestationOptions(
      PasskeyAttestationOptionsRequestDTO request);

  Future<PasskeyAssertionResult> sendPasskeyAssertionResult(
      PasskeyAssertionResultRequestDTO request);

  Future<PasskeyAssertionOptions> getPasskeyAssertionOptions(
      PasskeyAssertionOptionsRequestDTO request);
}
