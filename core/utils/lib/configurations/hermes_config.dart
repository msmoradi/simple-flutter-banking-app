import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utils/configurations/app_config.dart';
import 'package:utils/configurations/user_config.dart';

class BanxConfig {
  static SharedPreferences? _sharedPreferences;

  static Future<bool> initialize() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences != null;
  }

  static AppConfig get app => AppConfig(_sharedPreferences);

  static UserConfig get user => UserConfig(_sharedPreferences);
}
