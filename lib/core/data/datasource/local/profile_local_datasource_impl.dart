import 'package:banx/core/data/datasource/local/profile_local_datasource.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileLocalDataSource)
class ProfileLocalDataSourceImpl extends ProfileLocalDataSource {
  final FlutterSecureStorage secureStorage;

  ProfileLocalDataSourceImpl({required this.secureStorage});

  static const _firstNameKey = 'FIRST_NAME';
  static const _photoUrlKey = 'PHOTO_URL';

  @override
  Future<String?> getFirstName() async {
    return await secureStorage.read(key: _firstNameKey);
  }

  @override
  Future<String?> getPhotoUrl() async {
    return await secureStorage.read(key: _photoUrlKey);
  }

  @override
  Future<void> saveFirstName(String? firstName) async {
    await secureStorage.write(key: _firstNameKey, value: firstName);
  }

  @override
  Future<void> savePhotoUrl(String? photoUrl) async {
    await secureStorage.write(key: _photoUrlKey, value: photoUrl);
  }
}
