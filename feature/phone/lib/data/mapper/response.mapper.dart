import 'package:domain/entity_wrapper.dart';
import 'package:login/domain/login_entity.dart';
import 'package:networking/model/dto/network_response.dart';

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
