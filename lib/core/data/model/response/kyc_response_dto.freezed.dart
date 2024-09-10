// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KycResponseDto _$KycResponseDtoFromJson(Map<String, dynamic> json) {
  return _KycResponseDto.fromJson(json);
}

/// @nodoc
mixin _$KycResponseDto {
  RoutingButtonDto get routingButton => throw _privateConstructorUsedError;
  KYCStatusDto get identity => throw _privateConstructorUsedError;
  KYCStatusDto get phoneNumber => throw _privateConstructorUsedError;
  KYCStatusDto get face => throw _privateConstructorUsedError;
  KYCStatusDto get sayah => throw _privateConstructorUsedError;

  /// Serializes this KycResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycResponseDtoCopyWith<KycResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycResponseDtoCopyWith<$Res> {
  factory $KycResponseDtoCopyWith(
          KycResponseDto value, $Res Function(KycResponseDto) then) =
      _$KycResponseDtoCopyWithImpl<$Res, KycResponseDto>;
  @useResult
  $Res call(
      {RoutingButtonDto routingButton,
      KYCStatusDto identity,
      KYCStatusDto phoneNumber,
      KYCStatusDto face,
      KYCStatusDto sayah});

  $RoutingButtonDtoCopyWith<$Res> get routingButton;
  $KYCStatusDtoCopyWith<$Res> get identity;
  $KYCStatusDtoCopyWith<$Res> get phoneNumber;
  $KYCStatusDtoCopyWith<$Res> get face;
  $KYCStatusDtoCopyWith<$Res> get sayah;
}

/// @nodoc
class _$KycResponseDtoCopyWithImpl<$Res, $Val extends KycResponseDto>
    implements $KycResponseDtoCopyWith<$Res> {
  _$KycResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routingButton = null,
    Object? identity = null,
    Object? phoneNumber = null,
    Object? face = null,
    Object? sayah = null,
  }) {
    return _then(_value.copyWith(
      routingButton: null == routingButton
          ? _value.routingButton
          : routingButton // ignore: cast_nullable_to_non_nullable
              as RoutingButtonDto,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      sayah: null == sayah
          ? _value.sayah
          : sayah // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
    ) as $Val);
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutingButtonDtoCopyWith<$Res> get routingButton {
    return $RoutingButtonDtoCopyWith<$Res>(_value.routingButton, (value) {
      return _then(_value.copyWith(routingButton: value) as $Val);
    });
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get identity {
    return $KYCStatusDtoCopyWith<$Res>(_value.identity, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get phoneNumber {
    return $KYCStatusDtoCopyWith<$Res>(_value.phoneNumber, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get face {
    return $KYCStatusDtoCopyWith<$Res>(_value.face, (value) {
      return _then(_value.copyWith(face: value) as $Val);
    });
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get sayah {
    return $KYCStatusDtoCopyWith<$Res>(_value.sayah, (value) {
      return _then(_value.copyWith(sayah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycResponseDtoImplCopyWith<$Res>
    implements $KycResponseDtoCopyWith<$Res> {
  factory _$$KycResponseDtoImplCopyWith(_$KycResponseDtoImpl value,
          $Res Function(_$KycResponseDtoImpl) then) =
      __$$KycResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoutingButtonDto routingButton,
      KYCStatusDto identity,
      KYCStatusDto phoneNumber,
      KYCStatusDto face,
      KYCStatusDto sayah});

  @override
  $RoutingButtonDtoCopyWith<$Res> get routingButton;
  @override
  $KYCStatusDtoCopyWith<$Res> get identity;
  @override
  $KYCStatusDtoCopyWith<$Res> get phoneNumber;
  @override
  $KYCStatusDtoCopyWith<$Res> get face;
  @override
  $KYCStatusDtoCopyWith<$Res> get sayah;
}

/// @nodoc
class __$$KycResponseDtoImplCopyWithImpl<$Res>
    extends _$KycResponseDtoCopyWithImpl<$Res, _$KycResponseDtoImpl>
    implements _$$KycResponseDtoImplCopyWith<$Res> {
  __$$KycResponseDtoImplCopyWithImpl(
      _$KycResponseDtoImpl _value, $Res Function(_$KycResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routingButton = null,
    Object? identity = null,
    Object? phoneNumber = null,
    Object? face = null,
    Object? sayah = null,
  }) {
    return _then(_$KycResponseDtoImpl(
      routingButton: null == routingButton
          ? _value.routingButton
          : routingButton // ignore: cast_nullable_to_non_nullable
              as RoutingButtonDto,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      sayah: null == sayah
          ? _value.sayah
          : sayah // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycResponseDtoImpl implements _KycResponseDto {
  const _$KycResponseDtoImpl(
      {required this.routingButton,
      required this.identity,
      required this.phoneNumber,
      required this.face,
      required this.sayah});

  factory _$KycResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycResponseDtoImplFromJson(json);

  @override
  final RoutingButtonDto routingButton;
  @override
  final KYCStatusDto identity;
  @override
  final KYCStatusDto phoneNumber;
  @override
  final KYCStatusDto face;
  @override
  final KYCStatusDto sayah;

  @override
  String toString() {
    return 'KycResponseDto(routingButton: $routingButton, identity: $identity, phoneNumber: $phoneNumber, face: $face, sayah: $sayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycResponseDtoImpl &&
            (identical(other.routingButton, routingButton) ||
                other.routingButton == routingButton) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.sayah, sayah) || other.sayah == sayah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, routingButton, identity, phoneNumber, face, sayah);

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycResponseDtoImplCopyWith<_$KycResponseDtoImpl> get copyWith =>
      __$$KycResponseDtoImplCopyWithImpl<_$KycResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _KycResponseDto implements KycResponseDto {
  const factory _KycResponseDto(
      {required final RoutingButtonDto routingButton,
      required final KYCStatusDto identity,
      required final KYCStatusDto phoneNumber,
      required final KYCStatusDto face,
      required final KYCStatusDto sayah}) = _$KycResponseDtoImpl;

  factory _KycResponseDto.fromJson(Map<String, dynamic> json) =
      _$KycResponseDtoImpl.fromJson;

  @override
  RoutingButtonDto get routingButton;
  @override
  KYCStatusDto get identity;
  @override
  KYCStatusDto get phoneNumber;
  @override
  KYCStatusDto get face;
  @override
  KYCStatusDto get sayah;

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycResponseDtoImplCopyWith<_$KycResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KYCStatusDto _$KYCStatusDtoFromJson(Map<String, dynamic> json) {
  return _KYCStatus.fromJson(json);
}

/// @nodoc
mixin _$KYCStatusDto {
  KYCStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this KYCStatusDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KYCStatusDtoCopyWith<KYCStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KYCStatusDtoCopyWith<$Res> {
  factory $KYCStatusDtoCopyWith(
          KYCStatusDto value, $Res Function(KYCStatusDto) then) =
      _$KYCStatusDtoCopyWithImpl<$Res, KYCStatusDto>;
  @useResult
  $Res call({KYCStatus status, String title, String description});
}

/// @nodoc
class _$KYCStatusDtoCopyWithImpl<$Res, $Val extends KYCStatusDto>
    implements $KYCStatusDtoCopyWith<$Res> {
  _$KYCStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KYCStatusImplCopyWith<$Res>
    implements $KYCStatusDtoCopyWith<$Res> {
  factory _$$KYCStatusImplCopyWith(
          _$KYCStatusImpl value, $Res Function(_$KYCStatusImpl) then) =
      __$$KYCStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KYCStatus status, String title, String description});
}

/// @nodoc
class __$$KYCStatusImplCopyWithImpl<$Res>
    extends _$KYCStatusDtoCopyWithImpl<$Res, _$KYCStatusImpl>
    implements _$$KYCStatusImplCopyWith<$Res> {
  __$$KYCStatusImplCopyWithImpl(
      _$KYCStatusImpl _value, $Res Function(_$KYCStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$KYCStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KYCStatusImpl implements _KYCStatus {
  const _$KYCStatusImpl(
      {required this.status, required this.title, required this.description});

  factory _$KYCStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$KYCStatusImplFromJson(json);

  @override
  final KYCStatus status;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'KYCStatusDto(status: $status, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KYCStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, title, description);

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KYCStatusImplCopyWith<_$KYCStatusImpl> get copyWith =>
      __$$KYCStatusImplCopyWithImpl<_$KYCStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KYCStatusImplToJson(
      this,
    );
  }
}

abstract class _KYCStatus implements KYCStatusDto {
  const factory _KYCStatus(
      {required final KYCStatus status,
      required final String title,
      required final String description}) = _$KYCStatusImpl;

  factory _KYCStatus.fromJson(Map<String, dynamic> json) =
      _$KYCStatusImpl.fromJson;

  @override
  KYCStatus get status;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KYCStatusImplCopyWith<_$KYCStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
