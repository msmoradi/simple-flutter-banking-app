// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpResponseDtoImpl _$$VerifyOtpResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpResponseDtoImpl(
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
      passwordAuthentication: json['passwordAuthentication'] as String,
    );

Map<String, dynamic> _$$VerifyOtpResponseDtoImplToJson(
        _$VerifyOtpResponseDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'passwordAuthentication': instance.passwordAuthentication,
    };
