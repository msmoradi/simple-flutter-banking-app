import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseConfig {
  final SharedPreferences? sharedPreferences;

  BaseConfig({required this.sharedPreferences});
}
