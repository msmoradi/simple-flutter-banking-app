import 'dart:io';
import 'package:banx/core/data/datasource/remote/media_remote_data_source.dart';
import 'package:banx/core/domain/repository/media_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MediaRepository)
class MediaRepositoryImpl implements MediaRepository {
  final MediaRemoteDataSource mediaRemoteDataSource;

  MediaRepositoryImpl(this.mediaRemoteDataSource);

  @override
  Future<void> uploadImage(
      File image, Function(int, int) onSendProgress) async {
    return await mediaRemoteDataSource.uploadImage(image, onSendProgress);
  }

  @override
  Future<void> uploadVideo(
      File video, Function(int, int) onSendProgress) async {
    return await mediaRemoteDataSource.uploadVideo(video, onSendProgress);
  }
}
