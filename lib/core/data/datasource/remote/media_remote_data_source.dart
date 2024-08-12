import 'dart:io';

abstract class MediaRemoteDataSource {
  Future<void> uploadImage(File file, Function(int, int) onSendProgress);

  Future<void> uploadVideo(File file, Function(int, int) onSendProgress);
}
