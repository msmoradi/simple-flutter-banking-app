import 'package:domain/entity_wrapper.dart';
import 'package:networking/model/dto/network_response.dart';
import 'package:phone/domain/login_entity.dart';

extension ExtendedString<T> on Future<NetworkResponse<T>> {
  Future<EntityWrapper<LoginEntity>> mapResponseToEntityWrapper() {
    return then(
        (value) => value.when(
            ok: (data) => EntityWrapper.success(LoginEntity(data)),
            error: (message) =>
                EntityWrapper.networkError(Exception(message)),
            loading: (message) => EntityWrapper.partialSuccess('loading...')),
        onError: (error) => EntityWrapper.partialSuccess(error.toString()));
  }
}
