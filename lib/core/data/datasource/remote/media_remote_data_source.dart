abstract class MediaRemoteDataSource {
  Future<void> uploadImage(String path, Function(int, int) onSendProgress);

  Future<void> uploadVideo(String path, Function(int, int) onSendProgress);
}
