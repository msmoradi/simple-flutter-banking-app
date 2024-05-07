import 'package:shared_preferences/shared_preferences.dart';
import 'base_config.dart';

class AppConfig extends BaseConfig {
  AppConfig(SharedPreferences? sharedPreferences)
      : super(sharedPreferences: sharedPreferences);
}

extension IntroPage on AppConfig {
  static const _isIntroPageViewed = "is_intro_page_viewed";

  Future introPageViewed() async {
    await sharedPreferences?.setBool(_isIntroPageViewed, true);
  }

  bool isIntroPageViewed() {
    return sharedPreferences?.getBool(_isIntroPageViewed) ?? false;
  }
}
