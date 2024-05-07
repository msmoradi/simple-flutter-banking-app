import 'package:networking/typedefs.dart';

class ResponseModel<T> {
  String? requestId;
  String? apiVersion;
  List<APIMessage>? messages = [];
  String? context;
  T? data;
  APIError? error;

  ResponseModel.error(this.error);
  ResponseModel.success(this.data);

  ResponseModel.fromJson(JSON json) {
    requestId = json['requestId'];
    apiVersion = json['apiVersion'];
    if (json['messages'] != null) {
      json['messages'].forEach((item) {
        messages?.add(APIMessage.fromJson(item));
      });
    }
    context = json['context'];
    data = json['data'] as T;
  }

}

class APIMessage {
  late int type;
  String? title;
  String? description;

  APIMessage.fromJson(JSON json) {
    type = json['type'];
    title = json['title'];
    description = json['description'];
  }
}

class APIError {
  String? code;
  List<ValidationError>? details;

  APIError.fromJson(JSON json) {
    code = json['code'];
    if (json['details'] != null) {
      json['details'].forEach((item) {
        details?.add(ValidationError.fromJson(item));
      });
    }
  }
}

class ValidationError {
  String? attribute;
  String? message;

  ValidationError.fromJson(JSON json) {
    attribute = json['attribute'];
    message = json['message'];
  }
}
