
abstract class TokenRepository {
  Future<void> saveAccessToken(String accessToken);

  Future<void> saveRefreshToken(String refreshToken);

  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<void> deleteAccessToken();

  Future<void> deleteRefreshToken();

  Future<void> clearTokens();
}
