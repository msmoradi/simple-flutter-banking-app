import 'package:domain/entities/entity.dart';

class UserProfileEntity extends Entity {
  final String firstName;
  final String lastName;
  final String firstNameEn;
  final String lastNameEn;
  final String phoneNumber;
  final String username;
  final String nationalId;
  final String photoUrl;
  final String profileStatus;
  final LandingPageEntity landingPage;
  final String kycLevel;
  final KycStateEntity kycState;

  UserProfileEntity({
    required this.firstName,
    required this.lastName,
    required this.firstNameEn,
    required this.lastNameEn,
    required this.phoneNumber,
    required this.username,
    required this.nationalId,
    required this.photoUrl,
    required this.profileStatus,
    required this.landingPage,
    required this.kycLevel,
    required this.kycState,
  });
}

class KycStateEntity {
  KycStateEntity({
    required bool identityChecked,
    required bool isLive,
    required bool isFaceDetected,
    required bool sayahState,
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
    'Home': LandingPageEntity.home,
    'Waiting': LandingPageEntity.waiting,
    'FaceDetection': LandingPageEntity.faceDetection,
    'CardOrdering': LandingPageEntity.cardOrdering,
  };

  final enumValue = map[value];
  if (enumValue == null) {
    throw ArgumentError('Unknown value: $value');
  }
  return enumValue;
}
