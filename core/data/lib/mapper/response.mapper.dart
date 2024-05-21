import 'package:domain/entities/send_otp_entity.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:networking/model/dto/network_response.dart';

extension ExtendedString<T> on Future<NetworkResponse<T>> {
  Future<EntityWrapper<SendOtpEntity>> mapResponseToEntityWrapper() {
    return then(
        (value) => value.when(
            ok: (data) => EntityWrapper.success(SendOtpEntity("","",5)),
            error: (message) => EntityWrapper.networkError(Exception(message)),
            loading: (message) => EntityWrapper.partialSuccess('loading...')),
        onError: (error) => EntityWrapper.partialSuccess(error.toString()));
  }
}
