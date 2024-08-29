import 'dart:async';
import 'package:banx/core/data/datasource/local/profile_local_datasource.dart';
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl({
    required this.profileLocalDataSource,
    required this.profileRemoteDataSource,
  });

  final ProfileRemoteDataSource profileRemoteDataSource;
  final ProfileLocalDataSource profileLocalDataSource;

  @override
  Future<EntityWrapper<UserProfileEntity>> getProfile() {
    return profileRemoteDataSource.getProfile().mapResponseToEntityWrapper(
        mapper: (model) {
      return UserProfileEntity(
        firstName: model.firstName,
        lastName: model.lastName,
        firstNameEN: model.firstNameEN,
        lastNameEN: model.lastNameEN,
        phoneNumber: model.phoneNumber,
        username: model.username,
        nationalID: model.nationalID,
        photoUrl: model.photoUrl,
        profileStatus: model.profileStatus,
        landingPage: model.landingPage,
        kycLevel: model.kycLevel,
        kycState: KycStateEntity(
          identityChecked: model.kycState.identityChecked,
          livenessChecked: model.kycState.livenessChecked,
          faceCompareChecked: model.kycState.faceCompareChecked,
          sayahChecked: model.kycState.sayahChecked,
        ),
      );
    }).then((entityWrapper) async {
      if (entityWrapper is SuccessEntityWrapper<UserProfileEntity>) {
        await saveFirstName(entityWrapper.data.firstName);
        await savePhotoUrl(entityWrapper.data.photoUrl);
      }
      return entityWrapper;
    });
  }

  @override
  Future<String?> getFirstName() {
    return profileLocalDataSource.getFirstName();
  }

  @override
  Future<String?> getPhotoUrl() {
    return profileLocalDataSource.getPhotoUrl();
  }

  @override
  Future<void> saveFirstName(String? firstName) {
    return profileLocalDataSource.saveFirstName(firstName);
  }

  @override
  Future<void> savePhotoUrl(String? photoUrl) {
    return profileLocalDataSource.saveFirstName(photoUrl);
  }
}
