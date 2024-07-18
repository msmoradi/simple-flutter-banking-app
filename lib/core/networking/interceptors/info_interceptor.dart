import 'package:dio/dio.dart';
import 'dart:io';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';

class InfoInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String platform = Platform.operatingSystem;

    String clientType = "customer";

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appVersion = packageInfo.version;
    String appVersionCode = packageInfo.buildNumber;

    // Construct User-Agent string (this is a simple example)
    String userAgent = "YourAppName/$appVersion ($platform)";

    // Get device ID, brand, and model
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String deviceUid = "unknown-device-uid"; // Fallback value
    String deviceBrand = "unknown-brand";
    String deviceModel = "unknown-model";

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceUid = androidInfo.id; // Use fallback if androidId is null
      deviceBrand = androidInfo.brand;
      deviceModel = androidInfo.model;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceUid = iosInfo.identifierForVendor ?? deviceUid; // Use fallback if identifierForVendor is null
      deviceBrand = "Apple";
      deviceModel = iosInfo.utsname.machine;
    }

    // Add headers
    options.headers.addAll({
      "platform": platform,
      "client-type": clientType,
      "app-version": appVersion,
      "app-version-code": appVersionCode,
      "device-uid": deviceUid,
      "device": "$deviceBrand $deviceModel",
    });

    return super.onRequest(options, handler);
  }
}