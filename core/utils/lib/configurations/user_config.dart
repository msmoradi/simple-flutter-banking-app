import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base_config.dart';

class UserConfig extends BaseConfig {
  UserConfig(SharedPreferences? sharedPreferences)
      : super(sharedPreferences: sharedPreferences);
}

extension UserLogin on UserConfig {
  static const _isUserLoggedIn = "is_logged_in";

  Future _setLoginStatus(bool isUserLoggedIn) async {
    await sharedPreferences?.setBool(_isUserLoggedIn, isUserLoggedIn);
  }

  bool isLoggedIn() {
    final isUserLoggedIn = sharedPreferences?.getBool(_isUserLoggedIn) ?? false;
    return isUserLoggedIn;
  }

  Future logIn(String accessToken) async {
    await _setLoginStatus(true);
  }
}

extension UserAuthenticator on UserConfig {
  static const _isAuthenticatorEnabled = "is_authenticator_enabled";

  bool isAuthenticatorEnabled() {
    final isAuthenticatorEnabled =
        sharedPreferences?.getBool(_isAuthenticatorEnabled) ?? false;
    return isAuthenticatorEnabled;
  }

  void setAuthenticatorStatus(bool? isAuthenticatorEnabled) {
    sharedPreferences?.setBool(
        _isAuthenticatorEnabled, isAuthenticatorEnabled ?? false);
  }
}

extension UserInformation on UserConfig {
  static const _userUsername = "user_username";

  void setUserUsername(String? username) {
    if (username != null) {
      sharedPreferences?.setString(_userUsername, username);
    }
  }

  String? getUserUsername() {
    return sharedPreferences?.getString(_userUsername);
  }
}

extension UserLogout on UserConfig {
  void logOut(BuildContext context) {
    sharedPreferences?.clear();
  }
}
