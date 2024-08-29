abstract class ProfileLocalDataSource {
  Future<void> saveFirstName(String? firstName);

  Future<void> savePhotoUrl(String? photoUrl);

  Future<String?> getFirstName();

  Future<String?> getPhotoUrl();
}
