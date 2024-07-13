import 'dart:async';

import 'package:data/datasource/remote/profile_remote_datasource.dart';
import 'package:data/mapper/response.mapper.dart';
import 'package:domain/entities/check_postal_code_entity.dart';
import 'package:domain/entities/user_profile_entity.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:domain/repository/profile_repository.dart';

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
        firstNameEn: model.firstNameEn,
        lastNameEn: model.lastNameEn,
        phoneNumber: model.phoneNumber,
        username: model.username,
        nationalId: model.nationalId,
        photoUrl: model.photoUrl,
        profileStatus: model.profileStatus,
        landingPage: stringToLandingPageEntity(model.landingPage),
        kycLevel: model.kycLevel,
        kycState: KycStateEntity(
          identityChecked: model.kycState.identityChecked,
          isLive: model.kycState.isLive,
          isFaceDetected: model.kycState.isFaceDetected,
          sayahState: model.kycState.sayahState,
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
