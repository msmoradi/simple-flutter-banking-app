import 'package:domain/entities/entity.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:networking/model/dto/network_response.dart';

extension ExtendedString<T> on Future<NetworkResponse<T>> {
  Future<EntityWrapper<Entity>> mapResponseToEntityWrapper(Entity entity) {
    return then(
        (value) => value.when(
            ok: (data) => EntityWrapper.success(entity),
            error: (message) => EntityWrapper.networkError(Exception(message)),
            loading: (message) => EntityWrapper.partialSuccess('loading...')),
        onError: (error) => EntityWrapper.partialSuccess(error.toString()));
  }
}
