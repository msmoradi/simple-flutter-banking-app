import 'package:domain/entities/entity.dart';
import 'package:domain/entity_wrapper.dart';

extension ExtendedString<T> on Future<T> {
  Future<EntityWrapper<Entity>> mapResponseToEntityWrapper(
      {required Entity Function(T response) mapper}) {
    return then((value) => EntityWrapper.success(mapper(value)),
        onError: (error) => EntityWrapper.partialSuccess(error.toString()));
  }
}
