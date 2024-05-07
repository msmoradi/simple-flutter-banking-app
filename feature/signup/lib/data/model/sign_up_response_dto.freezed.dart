// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpResponseDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String status) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String status)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String status)? $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseDtoCopyWith<$Res> {
  factory $SignUpResponseDtoCopyWith(
          SignUpResponseDto value, $Res Function(SignUpResponseDto) then) =
      _$SignUpResponseDtoCopyWithImpl<$Res, SignUpResponseDto>;
}

/// @nodoc
class _$SignUpResponseDtoCopyWithImpl<$Res, $Val extends SignUpResponseDto>
    implements $SignUpResponseDtoCopyWith<$Res> {
  _$SignUpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpResponseDtoCopyWith<$Res> {
  factory _$$_SignUpResponseDtoCopyWith(_$_SignUpResponseDto value,
          $Res Function(_$_SignUpResponseDto) then) =
      __$$_SignUpResponseDtoCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$_SignUpResponseDtoCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res, _$_SignUpResponseDto>
    implements _$$_SignUpResponseDtoCopyWith<$Res> {
  __$$_SignUpResponseDtoCopyWithImpl(
      _$_SignUpResponseDto _value, $Res Function(_$_SignUpResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_SignUpResponseDto(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpResponseDto implements _SignUpResponseDto {
  const _$_SignUpResponseDto(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'SignUpResponseDto(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpResponseDto &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpResponseDtoCopyWith<_$_SignUpResponseDto> get copyWith =>
      __$$_SignUpResponseDtoCopyWithImpl<_$_SignUpResponseDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String status) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return $default(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String status)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return $default?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String status)? $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignUpResponseDto implements SignUpResponseDto {
  const factory _SignUpResponseDto(final String status) = _$_SignUpResponseDto;

  String get status;
  @JsonKey(ignore: true)
  _$$_SignUpResponseDtoCopyWith<_$_SignUpResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonCopyWith<$Res> {
  factory _$$JsonCopyWith(_$Json value, $Res Function(_$Json) then) =
      __$$JsonCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$JsonCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res, _$Json>
    implements _$$JsonCopyWith<$Res> {
  __$$JsonCopyWithImpl(_$Json _value, $Res Function(_$Json) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Json(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$Json implements Json {
  const _$Json(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'SignUpResponseDto.json(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Json &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonCopyWith<_$Json> get copyWith =>
      __$$JsonCopyWithImpl<_$Json>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String status) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String status)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String status)? $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class Json implements SignUpResponseDto {
  const factory Json(final Map<String, dynamic> data) = _$Json;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$JsonCopyWith<_$Json> get copyWith => throw _privateConstructorUsedError;
}
