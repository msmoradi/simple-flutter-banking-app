import 'dart:async';
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/check_postal_code_entity.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl({required this.profileRemoteDataSource});

  final ProfileRemoteDataSource profileRemoteDataSource;

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
        landingPage: stringToLandingPageEntity(model.landingPage),
        kycLevel: model.kycLevel,
        kycState: KycStateEntity(
          identityChecked: model.kycState.identityChecked,
          livenessChecked: model.kycState.livenessChecked,
          faceCompareChecked: model.kycState.faceCompareChecked,
          sayahChecked: model.kycState.sayahChecked,
        ),
      );
    });
  }

  @override
  Future<EntityWrapper<CheckPostalCodeEntity>> checkPostalCode(
      {required String postalCode}) {
    return profileRemoteDataSource
        .checkPostalCode(postalCode)
        .mapResponseToEntityWrapper(mapper: (model) {
      return CheckPostalCodeEntity();
    });
  }
}
