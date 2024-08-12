import 'dart:io';

abstract class MediaRepository {
  Future<void> uploadImage(File image, Function(int, int) onSendProgress);
  Future<void> uploadVideo(File video, Function(int, int) onSendProgress);
}