// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseDtoImpl _$$UserProfileResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseDtoImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      firstNameEn: json['firstNameEn'] as String,
      lastNameEn: json['lastNameEn'] as String,
      phoneNumber: json['phoneNumber'] as String,
      username: json['username'] as String,
      nationalId: json['nationalId'] as String,
      photoUrl: json['photoUrl'] as String,
      profileStatus: json['profileStatus'] as String,
      landingPage: json['landingPage'] as String,
      kycLevel: json['kycLevel'] as String,
      kycState: KycState.fromJson(json['kycState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileResponseDtoImplToJson(
        _$UserProfileResponseDtoImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'nationalId': instance.nationalId,
      'photoUrl': instance.photoUrl,
      'profileStatus': instance.profileStatus,
      'landingPage': instance.landingPage,
      'kycLevel': instance.kycLevel,
      'kycState': instance.kycState,
    };

_$KycStateImpl _$$KycStateImplFromJson(Map<String, dynamic> json) =>
    _$KycStateImpl(
      identityChecked: json['identityChecked'] as bool,
      isLive: json['isLive'] as bool,
      isFaceDetected: json['isFaceDetected'] as bool,
      sayahState: json['sayahState'] as bool,
    );

Map<String, dynamic> _$$KycStateImplToJson(_$KycStateImpl instance) =>
    <String, dynamic>{
      'identityChecked': instance.identityChecked,
      'isLive': instance.isLive,
      'isFaceDetected': instance.isFaceDetected,
      'sayahState': instance.sayahState,
    };
