import 'package:domain/entities/entity.dart';
import 'package:domain/entity_wrapper.dart';

extension ExtendedString<T> on Future<T> {
  Future<EntityWrapper<R>> mapResponseToEntityWrapper<R extends Entity>(
      {required R Function(T response) mapper}) {
    return then((value) => EntityWrapper.success(mapper(value)),
        onError: (error) {
      if (error is Exception) {
        return EntityWrapper.networkError<R>(error);
      } else {
        return EntityWrapper.partialSuccess<R>(error.toString());
      }
    });
  }
}
