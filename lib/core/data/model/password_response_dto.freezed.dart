// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordResponseDto _$PasswordResponseDtoFromJson(Map<String, dynamic> json) {
  return _PasswordResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PasswordResponseDto {
  /// Serializes this PasswordResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResponseDtoCopyWith<$Res> {
  factory $PasswordResponseDtoCopyWith(
          PasswordResponseDto value, $Res Function(PasswordResponseDto) then) =
      _$PasswordResponseDtoCopyWithImpl<$Res, PasswordResponseDto>;
}

/// @nodoc
class _$PasswordResponseDtoCopyWithImpl<$Res, $Val extends PasswordResponseDto>
    implements $PasswordResponseDtoCopyWith<$Res> {
  _$PasswordResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PasswordResponseDtoImplCopyWith<$Res> {
  factory _$$PasswordResponseDtoImplCopyWith(_$PasswordResponseDtoImpl value,
          $Res Function(_$PasswordResponseDtoImpl) then) =
      __$$PasswordResponseDtoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordResponseDtoImplCopyWithImpl<$Res>
    extends _$PasswordResponseDtoCopyWithImpl<$Res, _$PasswordResponseDtoImpl>
    implements _$$PasswordResponseDtoImplCopyWith<$Res> {
  __$$PasswordResponseDtoImplCopyWithImpl(_$PasswordResponseDtoImpl _value,
      $Res Function(_$PasswordResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PasswordResponseDtoImpl implements _PasswordResponseDto {
  const _$PasswordResponseDtoImpl();

  factory _$PasswordResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResponseDtoImplFromJson(json);

  @override
  String toString() {
    return 'PasswordResponseDto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResponseDtoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PasswordResponseDto implements PasswordResponseDto {
  const factory _PasswordResponseDto() = _$PasswordResponseDtoImpl;

  factory _PasswordResponseDto.fromJson(Map<String, dynamic> json) =
      _$PasswordResponseDtoImpl.fromJson;
}
