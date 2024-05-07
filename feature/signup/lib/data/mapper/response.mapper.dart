import 'package:domain/entity_wrapper.dart';
import 'package:networking/model/dto/network_response.dart';
import 'package:signup/domain/sign_up_entity.dart';

extension ExtendedString<T> on Future<NetworkResponse<T>> {
  Future<EntityWrapper<SignUpEntity>> mapResponseToEntityWrapper() {
    return then(
        (value) => value.when(
            ok: (data) => EntityWrapper.success(SignUpEntity(data)),
            error: (message) =>
                EntityWrapper.networkError(Exception(message)),
            loading: (message) => EntityWrapper.partialSuccess('success'),),
        onError: (error) => EntityWrapper.partialSuccess(error.toString()));
  }
}
