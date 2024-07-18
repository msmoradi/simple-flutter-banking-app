// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpResponseDto _$VerifyOtpResponseDtoFromJson(Map<String, dynamic> json) {
  return _VerifyOtpResponseDto.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponseDto {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get passwordAuthentication => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseDtoCopyWith<VerifyOtpResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseDtoCopyWith<$Res> {
  factory $VerifyOtpResponseDtoCopyWith(VerifyOtpResponseDto value,
          $Res Function(VerifyOtpResponseDto) then) =
      _$VerifyOtpResponseDtoCopyWithImpl<$Res, VerifyOtpResponseDto>;
  @useResult
  $Res call(
      {String accessToken, String refreshToken, String passwordAuthentication});
}

/// @nodoc
class _$VerifyOtpResponseDtoCopyWithImpl<$Res,
        $Val extends VerifyOtpResponseDto>
    implements $VerifyOtpResponseDtoCopyWith<$Res> {
  _$VerifyOtpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? passwordAuthentication = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      passwordAuthentication: null == passwordAuthentication
          ? _value.passwordAuthentication
          : passwordAuthentication // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpResponseDtoImplCopyWith<$Res>
    implements $VerifyOtpResponseDtoCopyWith<$Res> {
  factory _$$VerifyOtpResponseDtoImplCopyWith(_$VerifyOtpResponseDtoImpl value,
          $Res Function(_$VerifyOtpResponseDtoImpl) then) =
      __$$VerifyOtpResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken, String refreshToken, String passwordAuthentication});
}

/// @nodoc
class __$$VerifyOtpResponseDtoImplCopyWithImpl<$Res>
    extends _$VerifyOtpResponseDtoCopyWithImpl<$Res, _$VerifyOtpResponseDtoImpl>
    implements _$$VerifyOtpResponseDtoImplCopyWith<$Res> {
  __$$VerifyOtpResponseDtoImplCopyWithImpl(_$VerifyOtpResponseDtoImpl _value,
      $Res Function(_$VerifyOtpResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? passwordAuthentication = null,
  }) {
    return _then(_$VerifyOtpResponseDtoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      passwordAuthentication: null == passwordAuthentication
          ? _value.passwordAuthentication
          : passwordAuthentication // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpResponseDtoImpl implements _VerifyOtpResponseDto {
  const _$VerifyOtpResponseDtoImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.passwordAuthentication});

  factory _$VerifyOtpResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpResponseDtoImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String passwordAuthentication;

  @override
  String toString() {
    return 'VerifyOtpResponseDto(accessToken: $accessToken, refreshToken: $refreshToken, passwordAuthentication: $passwordAuthentication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpResponseDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.passwordAuthentication, passwordAuthentication) ||
                other.passwordAuthentication == passwordAuthentication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, refreshToken, passwordAuthentication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpResponseDtoImplCopyWith<_$VerifyOtpResponseDtoImpl>
      get copyWith =>
          __$$VerifyOtpResponseDtoImplCopyWithImpl<_$VerifyOtpResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponseDto implements VerifyOtpResponseDto {
  const factory _VerifyOtpResponseDto(
          {required final String accessToken,
          required final String refreshToken,
          required final String passwordAuthentication}) =
      _$VerifyOtpResponseDtoImpl;

  factory _VerifyOtpResponseDto.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpResponseDtoImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get passwordAuthentication;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpResponseDtoImplCopyWith<_$VerifyOtpResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
