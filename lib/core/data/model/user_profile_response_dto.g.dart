// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseDtoImpl _$$UserProfileResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseDtoImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      firstNameEN: json['firstNameEN'] as String?,
      lastNameEN: json['lastNameEN'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      username: json['username'] as String?,
      nationalID: json['nationalID'] as String?,
      photoUrl: json['photoUrl'] as String?,
      profileStatus: json['profileStatus'] as String?,
      landingPage: $enumDecode(_$LandingPageEnumMap, json['landingPage']),
      kycLevel: json['kycLevel'] as String?,
      kycState: KycState.fromJson(json['kycState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileResponseDtoImplToJson(
        _$UserProfileResponseDtoImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'firstNameEN': instance.firstNameEN,
      'lastNameEN': instance.lastNameEN,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'nationalID': instance.nationalID,
      'photoUrl': instance.photoUrl,
      'profileStatus': instance.profileStatus,
      'landingPage': _$LandingPageEnumMap[instance.landingPage]!,
      'kycLevel': instance.kycLevel,
      'kycState': instance.kycState,
    };

const _$LandingPageEnumMap = {
  LandingPage.home: 'home',
  LandingPage.waiting: 'waiting',
  LandingPage.faceDetection: 'faceDetection',
  LandingPage.cardOrdering: 'cardOrdering',
};

_$KycStateImpl _$$KycStateImplFromJson(Map<String, dynamic> json) =>
    _$KycStateImpl(
      identityChecked: $enumDecode(_$KYCStatusEnumMap, json['identityChecked']),
      livenessChecked: $enumDecode(_$KYCStatusEnumMap, json['livenessChecked']),
      faceCompareChecked:
          $enumDecode(_$KYCStatusEnumMap, json['faceCompareChecked']),
      sayahChecked: $enumDecode(_$KYCStatusEnumMap, json['sayahChecked']),
    );

Map<String, dynamic> _$$KycStateImplToJson(_$KycStateImpl instance) =>
    <String, dynamic>{
      'identityChecked': _$KYCStatusEnumMap[instance.identityChecked]!,
      'livenessChecked': _$KYCStatusEnumMap[instance.livenessChecked]!,
      'faceCompareChecked': _$KYCStatusEnumMap[instance.faceCompareChecked]!,
      'sayahChecked': _$KYCStatusEnumMap[instance.sayahChecked]!,
    };

const _$KYCStatusEnumMap = {
  KYCStatus.pending: 'PENDING',
  KYCStatus.checking: 'CHECKING',
  KYCStatus.succeeded: 'SUCCEEDED',
  KYCStatus.failed: 'FAILED',
};
