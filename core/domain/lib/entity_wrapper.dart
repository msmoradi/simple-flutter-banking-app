import 'entities/entity.dart';

abstract class EntityWrapper<T extends Entity> {
  static success<T extends Entity>(T data) => SuccessEntityWrapper(data);

  static partialSuccess<T extends Entity>(String message) =>
      PartialSuccessEntityWrapper(message);

  static networkError<T extends Entity>(Exception exception) =>
      NetworkErrorEntityWrapper(exception);

  void when(
      {required void Function(T data) success,
      required void Function(String message) partialSuccess,
      required void Function(Exception exception) networkError}) {
    if (this is SuccessEntityWrapper<T>) {
      success.call((this as SuccessEntityWrapper<T>).data);
      return;
    }
    if (this is PartialSuccessEntityWrapper<T>) {
      partialSuccess.call((this as PartialSuccessEntityWrapper<T>).message);
      return;
    }
    if (this is NetworkErrorEntityWrapper<T>) {
      networkError.call((this as NetworkErrorEntityWrapper<T>).exception);
      return;
    }
  }
}

/*
* Represents successful network request(No error form the backend)
* */
class SuccessEntityWrapper<T extends Entity> extends EntityWrapper<T> {
  final T data;

  SuccessEntityWrapper(this.data);
}

/*
Represents successful network request (Backend thinks something is wrong)
* */
class PartialSuccessEntityWrapper<T extends Entity> extends EntityWrapper<T> {
  final String message;

  PartialSuccessEntityWrapper(this.message);
}

/*
Represents failure network request (IO exceptions, Http exceptions, etc)
* */
class NetworkErrorEntityWrapper<T extends Entity> extends EntityWrapper<T> {
  final Exception exception;

  NetworkErrorEntityWrapper(this.exception);
}
