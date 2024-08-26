// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileResponseDto _$UserProfileResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _UserProfileResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponseDto {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get firstNameEN => throw _privateConstructorUsedError;
  String? get lastNameEN => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get nationalID => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get profileStatus => throw _privateConstructorUsedError;
  LandingPage get landingPage => throw _privateConstructorUsedError;
  String? get kycLevel => throw _privateConstructorUsedError;
  KycState get kycState => throw _privateConstructorUsedError;

  /// Serializes this UserProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileResponseDtoCopyWith<UserProfileResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseDtoCopyWith<$Res> {
  factory $UserProfileResponseDtoCopyWith(UserProfileResponseDto value,
          $Res Function(UserProfileResponseDto) then) =
      _$UserProfileResponseDtoCopyWithImpl<$Res, UserProfileResponseDto>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? firstNameEN,
      String? lastNameEN,
      String? phoneNumber,
      String? username,
      String? nationalID,
      String? photoUrl,
      String? profileStatus,
      LandingPage landingPage,
      String? kycLevel,
      KycState kycState});

  $KycStateCopyWith<$Res> get kycState;
}

/// @nodoc
class _$UserProfileResponseDtoCopyWithImpl<$Res,
        $Val extends UserProfileResponseDto>
    implements $UserProfileResponseDtoCopyWith<$Res> {
  _$UserProfileResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? firstNameEN = freezed,
    Object? lastNameEN = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? nationalID = freezed,
    Object? photoUrl = freezed,
    Object? profileStatus = freezed,
    Object? landingPage = null,
    Object? kycLevel = freezed,
    Object? kycState = null,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameEN: freezed == firstNameEN
          ? _value.firstNameEN
          : firstNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameEN: freezed == lastNameEN
          ? _value.lastNameEN
          : lastNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalID: freezed == nationalID
          ? _value.nationalID
          : nationalID // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profileStatus: freezed == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      landingPage: null == landingPage
          ? _value.landingPage
          : landingPage // ignore: cast_nullable_to_non_nullable
              as LandingPage,
      kycLevel: freezed == kycLevel
          ? _value.kycLevel
          : kycLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      kycState: null == kycState
          ? _value.kycState
          : kycState // ignore: cast_nullable_to_non_nullable
              as KycState,
    ) as $Val);
  }

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KycStateCopyWith<$Res> get kycState {
    return $KycStateCopyWith<$Res>(_value.kycState, (value) {
      return _then(_value.copyWith(kycState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseDtoImplCopyWith<$Res>
    implements $UserProfileResponseDtoCopyWith<$Res> {
  factory _$$UserProfileResponseDtoImplCopyWith(
          _$UserProfileResponseDtoImpl value,
          $Res Function(_$UserProfileResponseDtoImpl) then) =
      __$$UserProfileResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? firstNameEN,
      String? lastNameEN,
      String? phoneNumber,
      String? username,
      String? nationalID,
      String? photoUrl,
      String? profileStatus,
      LandingPage landingPage,
      String? kycLevel,
      KycState kycState});

  @override
  $KycStateCopyWith<$Res> get kycState;
}

/// @nodoc
class __$$UserProfileResponseDtoImplCopyWithImpl<$Res>
    extends _$UserProfileResponseDtoCopyWithImpl<$Res,
        _$UserProfileResponseDtoImpl>
    implements _$$UserProfileResponseDtoImplCopyWith<$Res> {
  __$$UserProfileResponseDtoImplCopyWithImpl(
      _$UserProfileResponseDtoImpl _value,
      $Res Function(_$UserProfileResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? firstNameEN = freezed,
    Object? lastNameEN = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? nationalID = freezed,
    Object? photoUrl = freezed,
    Object? profileStatus = freezed,
    Object? landingPage = null,
    Object? kycLevel = freezed,
    Object? kycState = null,
  }) {
    return _then(_$UserProfileResponseDtoImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameEN: freezed == firstNameEN
          ? _value.firstNameEN
          : firstNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameEN: freezed == lastNameEN
          ? _value.lastNameEN
          : lastNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalID: freezed == nationalID
          ? _value.nationalID
          : nationalID // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profileStatus: freezed == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      landingPage: null == landingPage
          ? _value.landingPage
          : landingPage // ignore: cast_nullable_to_non_nullable
              as LandingPage,
      kycLevel: freezed == kycLevel
          ? _value.kycLevel
          : kycLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      kycState: null == kycState
          ? _value.kycState
          : kycState // ignore: cast_nullable_to_non_nullable
              as KycState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseDtoImpl implements _UserProfileResponseDto {
  const _$UserProfileResponseDtoImpl(
      {required this.firstName,
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
      required this.kycState});

  factory _$UserProfileResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseDtoImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? firstNameEN;
  @override
  final String? lastNameEN;
  @override
  final String? phoneNumber;
  @override
  final String? username;
  @override
  final String? nationalID;
  @override
  final String? photoUrl;
  @override
  final String? profileStatus;
  @override
  final LandingPage landingPage;
  @override
  final String? kycLevel;
  @override
  final KycState kycState;

  @override
  String toString() {
    return 'UserProfileResponseDto(firstName: $firstName, lastName: $lastName, firstNameEN: $firstNameEN, lastNameEN: $lastNameEN, phoneNumber: $phoneNumber, username: $username, nationalID: $nationalID, photoUrl: $photoUrl, profileStatus: $profileStatus, landingPage: $landingPage, kycLevel: $kycLevel, kycState: $kycState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseDtoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstNameEN, firstNameEN) ||
                other.firstNameEN == firstNameEN) &&
            (identical(other.lastNameEN, lastNameEN) ||
                other.lastNameEN == lastNameEN) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nationalID, nationalID) ||
                other.nationalID == nationalID) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.landingPage, landingPage) ||
                other.landingPage == landingPage) &&
            (identical(other.kycLevel, kycLevel) ||
                other.kycLevel == kycLevel) &&
            (identical(other.kycState, kycState) ||
                other.kycState == kycState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      firstNameEN,
      lastNameEN,
      phoneNumber,
      username,
      nationalID,
      photoUrl,
      profileStatus,
      landingPage,
      kycLevel,
      kycState);

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseDtoImplCopyWith<_$UserProfileResponseDtoImpl>
      get copyWith => __$$UserProfileResponseDtoImplCopyWithImpl<
          _$UserProfileResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponseDto implements UserProfileResponseDto {
  const factory _UserProfileResponseDto(
      {required final String? firstName,
      required final String? lastName,
      required final String? firstNameEN,
      required final String? lastNameEN,
      required final String? phoneNumber,
      required final String? username,
      required final String? nationalID,
      required final String? photoUrl,
      required final String? profileStatus,
      required final LandingPage landingPage,
      required final String? kycLevel,
      required final KycState kycState}) = _$UserProfileResponseDtoImpl;

  factory _UserProfileResponseDto.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseDtoImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get firstNameEN;
  @override
  String? get lastNameEN;
  @override
  String? get phoneNumber;
  @override
  String? get username;
  @override
  String? get nationalID;
  @override
  String? get photoUrl;
  @override
  String? get profileStatus;
  @override
  LandingPage get landingPage;
  @override
  String? get kycLevel;
  @override
  KycState get kycState;

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileResponseDtoImplCopyWith<_$UserProfileResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

KycState _$KycStateFromJson(Map<String, dynamic> json) {
  return _KycState.fromJson(json);
}

/// @nodoc
mixin _$KycState {
  KYCStatus get identityChecked => throw _privateConstructorUsedError;
  KYCStatus get livenessChecked => throw _privateConstructorUsedError;
  KYCStatus get faceCompareChecked => throw _privateConstructorUsedError;
  KYCStatus get sayahChecked => throw _privateConstructorUsedError;

  /// Serializes this KycState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStateCopyWith<KycState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStateCopyWith<$Res> {
  factory $KycStateCopyWith(KycState value, $Res Function(KycState) then) =
      _$KycStateCopyWithImpl<$Res, KycState>;
  @useResult
  $Res call(
      {KYCStatus identityChecked,
      KYCStatus livenessChecked,
      KYCStatus faceCompareChecked,
      KYCStatus sayahChecked});
}

/// @nodoc
class _$KycStateCopyWithImpl<$Res, $Val extends KycState>
    implements $KycStateCopyWith<$Res> {
  _$KycStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityChecked = null,
    Object? livenessChecked = null,
    Object? faceCompareChecked = null,
    Object? sayahChecked = null,
  }) {
    return _then(_value.copyWith(
      identityChecked: null == identityChecked
          ? _value.identityChecked
          : identityChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      livenessChecked: null == livenessChecked
          ? _value.livenessChecked
          : livenessChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      faceCompareChecked: null == faceCompareChecked
          ? _value.faceCompareChecked
          : faceCompareChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      sayahChecked: null == sayahChecked
          ? _value.sayahChecked
          : sayahChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycStateImplCopyWith<$Res>
    implements $KycStateCopyWith<$Res> {
  factory _$$KycStateImplCopyWith(
          _$KycStateImpl value, $Res Function(_$KycStateImpl) then) =
      __$$KycStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KYCStatus identityChecked,
      KYCStatus livenessChecked,
      KYCStatus faceCompareChecked,
      KYCStatus sayahChecked});
}

/// @nodoc
class __$$KycStateImplCopyWithImpl<$Res>
    extends _$KycStateCopyWithImpl<$Res, _$KycStateImpl>
    implements _$$KycStateImplCopyWith<$Res> {
  __$$KycStateImplCopyWithImpl(
      _$KycStateImpl _value, $Res Function(_$KycStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityChecked = null,
    Object? livenessChecked = null,
    Object? faceCompareChecked = null,
    Object? sayahChecked = null,
  }) {
    return _then(_$KycStateImpl(
      identityChecked: null == identityChecked
          ? _value.identityChecked
          : identityChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      livenessChecked: null == livenessChecked
          ? _value.livenessChecked
          : livenessChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      faceCompareChecked: null == faceCompareChecked
          ? _value.faceCompareChecked
          : faceCompareChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      sayahChecked: null == sayahChecked
          ? _value.sayahChecked
          : sayahChecked // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStateImpl implements _KycState {
  const _$KycStateImpl(
      {required this.identityChecked,
      required this.livenessChecked,
      required this.faceCompareChecked,
      required this.sayahChecked});

  factory _$KycStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStateImplFromJson(json);

  @override
  final KYCStatus identityChecked;
  @override
  final KYCStatus livenessChecked;
  @override
  final KYCStatus faceCompareChecked;
  @override
  final KYCStatus sayahChecked;

  @override
  String toString() {
    return 'KycState(identityChecked: $identityChecked, livenessChecked: $livenessChecked, faceCompareChecked: $faceCompareChecked, sayahChecked: $sayahChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStateImpl &&
            (identical(other.identityChecked, identityChecked) ||
                other.identityChecked == identityChecked) &&
            (identical(other.livenessChecked, livenessChecked) ||
                other.livenessChecked == livenessChecked) &&
            (identical(other.faceCompareChecked, faceCompareChecked) ||
                other.faceCompareChecked == faceCompareChecked) &&
            (identical(other.sayahChecked, sayahChecked) ||
                other.sayahChecked == sayahChecked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identityChecked, livenessChecked,
      faceCompareChecked, sayahChecked);

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStateImplCopyWith<_$KycStateImpl> get copyWith =>
      __$$KycStateImplCopyWithImpl<_$KycStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStateImplToJson(
      this,
    );
  }
}

abstract class _KycState implements KycState {
  const factory _KycState(
      {required final KYCStatus identityChecked,
      required final KYCStatus livenessChecked,
      required final KYCStatus faceCompareChecked,
      required final KYCStatus sayahChecked}) = _$KycStateImpl;

  factory _KycState.fromJson(Map<String, dynamic> json) =
      _$KycStateImpl.fromJson;

  @override
  KYCStatus get identityChecked;
  @override
  KYCStatus get livenessChecked;
  @override
  KYCStatus get faceCompareChecked;
  @override
  KYCStatus get sayahChecked;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStateImplCopyWith<_$KycStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
