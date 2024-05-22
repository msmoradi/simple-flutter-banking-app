import 'package:domain/entities/national_id.dart';

extension NationalIdExtension on NationalId {
  bool isValid() {
    return value.length == 10;
  }
}
