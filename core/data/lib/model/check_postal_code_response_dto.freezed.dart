// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_postal_code_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckPostalCodeResponseDto _$CheckPostalCodeResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CheckPostalCodeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CheckPostalCodeResponseDto {
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckPostalCodeResponseDtoCopyWith<CheckPostalCodeResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPostalCodeResponseDtoCopyWith<$Res> {
  factory $CheckPostalCodeResponseDtoCopyWith(CheckPostalCodeResponseDto value,
          $Res Function(CheckPostalCodeResponseDto) then) =
      _$CheckPostalCodeResponseDtoCopyWithImpl<$Res,
          CheckPostalCodeResponseDto>;
  @useResult
  $Res call({String postalCode});
}

/// @nodoc
class _$CheckPostalCodeResponseDtoCopyWithImpl<$Res,
        $Val extends CheckPostalCodeResponseDto>
    implements $CheckPostalCodeResponseDtoCopyWith<$Res> {
  _$CheckPostalCodeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPostalCodeResponseDtoImplCopyWith<$Res>
    implements $CheckPostalCodeResponseDtoCopyWith<$Res> {
  factory _$$CheckPostalCodeResponseDtoImplCopyWith(
          _$CheckPostalCodeResponseDtoImpl value,
          $Res Function(_$CheckPostalCodeResponseDtoImpl) then) =
      __$$CheckPostalCodeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postalCode});
}

/// @nodoc
class __$$CheckPostalCodeResponseDtoImplCopyWithImpl<$Res>
    extends _$CheckPostalCodeResponseDtoCopyWithImpl<$Res,
        _$CheckPostalCodeResponseDtoImpl>
    implements _$$CheckPostalCodeResponseDtoImplCopyWith<$Res> {
  __$$CheckPostalCodeResponseDtoImplCopyWithImpl(
      _$CheckPostalCodeResponseDtoImpl _value,
      $Res Function(_$CheckPostalCodeResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = null,
  }) {
    return _then(_$CheckPostalCodeResponseDtoImpl(
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckPostalCodeResponseDtoImpl implements _CheckPostalCodeResponseDto {
  const _$CheckPostalCodeResponseDtoImpl({required this.postalCode});

  factory _$CheckPostalCodeResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckPostalCodeResponseDtoImplFromJson(json);

  @override
  final String postalCode;

  @override
  String toString() {
    return 'CheckPostalCodeResponseDto(postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPostalCodeResponseDtoImpl &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPostalCodeResponseDtoImplCopyWith<_$CheckPostalCodeResponseDtoImpl>
      get copyWith => __$$CheckPostalCodeResponseDtoImplCopyWithImpl<
          _$CheckPostalCodeResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckPostalCodeResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CheckPostalCodeResponseDto
    implements CheckPostalCodeResponseDto {
  const factory _CheckPostalCodeResponseDto(
      {required final String postalCode}) = _$CheckPostalCodeResponseDtoImpl;

  factory _CheckPostalCodeResponseDto.fromJson(Map<String, dynamic> json) =
      _$CheckPostalCodeResponseDtoImpl.fromJson;

  @override
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$CheckPostalCodeResponseDtoImplCopyWith<_$CheckPostalCodeResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
