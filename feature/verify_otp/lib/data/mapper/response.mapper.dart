import 'package:domain/entity_wrapper.dart';
import 'package:networking/model/dto/network_response.dart';
import 'package:verify_otp/domain/verify_otp_entity.dart';

extension ExtendedString<T> on Future<NetworkResponse<T>> {
  Future<EntityWrapper<VerifyOtpEntity>> mapResponseToEntityWrapper() {
    return then(
        (value) => value.when(
            ok: (data) => EntityWrapper.success(VerifyOtpEntity(data)),
            error: (message) =>
                EntityWrapper.networkError(Exception(message)),
            loading: (message) => EntityWrapper.partialSuccess('loading...')),
        onError: (error) => EntityWrapper.partialSuccess(error.toString()));
  }
}
