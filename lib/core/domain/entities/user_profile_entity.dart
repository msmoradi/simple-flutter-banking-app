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
  final LandingPageEntity landingPage;
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
    required bool? identityChecked,
    required bool? livenessChecked,
    required bool? faceCompareChecked,
    required bool? sayahChecked,
  });
}

enum LandingPageEntity {
  home,
  waiting,
  faceDetection,
  cardOrdering,
}

LandingPageEntity stringToLandingPageEntity(String value) {
  const map = {
    'home': LandingPageEntity.home,
    'waiting': LandingPageEntity.waiting,
    'faceDetection': LandingPageEntity.faceDetection,
    'cardOrdering': LandingPageEntity.cardOrdering,
  };

  final enumValue = map[value];
  if (enumValue == null) {
    throw ArgumentError('Unknown value: $value');
  }
  return enumValue;
}
