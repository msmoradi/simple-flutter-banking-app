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
      landingPage: json['landingPage'] as String,
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
      'landingPage': instance.landingPage,
      'kycLevel': instance.kycLevel,
      'kycState': instance.kycState,
    };

_$KycStateImpl _$$KycStateImplFromJson(Map<String, dynamic> json) =>
    _$KycStateImpl(
      identityChecked: json['identityChecked'] as bool,
      livenessChecked: json['livenessChecked'] as bool?,
      faceCompareChecked: json['faceCompareChecked'] as bool?,
      sayahChecked: json['sayahChecked'] as bool?,
    );

Map<String, dynamic> _$$KycStateImplToJson(_$KycStateImpl instance) =>
    <String, dynamic>{
      'identityChecked': instance.identityChecked,
      'livenessChecked': instance.livenessChecked,
      'faceCompareChecked': instance.faceCompareChecked,
      'sayahChecked': instance.sayahChecked,
    };
