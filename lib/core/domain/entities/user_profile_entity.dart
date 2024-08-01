import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/domain/entities/entity.dart';

class UserProfileEntity extends Entity {
  final String? firstName;
  final String? lastName;
  final String? firstNameEN;
  final String? lastNameEN;
  final String? phoneNumber;
  final String? username;
  final String? nationalID;
  final String? photoUrl;
  final String? profileStatus;
  final LandingPage landingPage;
  final String? kycLevel;
  final KycStateEntity kycState;

  UserProfileEntity({
    required this.firstName,
    required this.lastName,
    required this.firstNameEN,
    required this.lastNameEN,
    required this.phoneNumber,
    required this.username,
    required this.nationalID,
    required this.photoUrl,
    required this.profileStatus,
    required this.landingPage,
    required this.kycLevel,
    required this.kycState,
  });
}

class KycStateEntity {
  KycStateEntity({
    required KYCStatus identityChecked,
    required KYCStatus livenessChecked,
    required KYCStatus faceCompareChecked,
    required KYCStatus sayahChecked,
  });
}
