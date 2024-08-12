import 'dart:io';
import 'package:banx/core/data/datasource/remote/media_remote_data_source.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MediaRemoteDataSource)
class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  final HTTPClient apiService;

  MediaRemoteDataSourceImpl({required this.apiService});

  @override
  Future<void> uploadImage(File file, Function(int, int) onSendProgress) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });

    return await apiService.post(
      endpoint: ApiEndpoint.media(MediaEndpoint.UPLOAD_IMAGE),
      data: formData,
      onSendProgress: onSendProgress,
      mapper: (item) {},
    );
  }

  @override
  Future<void> uploadVideo(File file, Function(int, int) onSendProgress) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(file.path, filename: fileName),
    });

    return await apiService.post(
      endpoint: ApiEndpoint.media(MediaEndpoint.UPLOAD_VIDEO),
      data: formData,
      onSendProgress: onSendProgress,
      mapper: (item) {},
    );
  }
}
