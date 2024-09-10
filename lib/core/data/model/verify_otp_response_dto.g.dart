// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpResponseDtoImpl _$$VerifyOtpResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpResponseDtoImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$VerifyOtpResponseDtoImplToJson(
        _$VerifyOtpResponseDtoImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
