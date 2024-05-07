// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordResponseDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message)? $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ForgotPasswordResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ForgotPasswordResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordResponseDtoCopyWith<$Res> {
  factory $ForgotPasswordResponseDtoCopyWith(ForgotPasswordResponseDto value,
          $Res Function(ForgotPasswordResponseDto) then) =
      _$ForgotPasswordResponseDtoCopyWithImpl<$Res, ForgotPasswordResponseDto>;
}

/// @nodoc
class _$ForgotPasswordResponseDtoCopyWithImpl<$Res,
        $Val extends ForgotPasswordResponseDto>
    implements $ForgotPasswordResponseDtoCopyWith<$Res> {
  _$ForgotPasswordResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ForgotPasswordResponseDtoCopyWith<$Res> {
  factory _$$_ForgotPasswordResponseDtoCopyWith(
          _$_ForgotPasswordResponseDto value,
          $Res Function(_$_ForgotPasswordResponseDto) then) =
      __$$_ForgotPasswordResponseDtoCopyWithImpl<$Res>;
  @useResult
  $Res call({int status, String message});
}

/// @nodoc
class __$$_ForgotPasswordResponseDtoCopyWithImpl<$Res>
    extends _$ForgotPasswordResponseDtoCopyWithImpl<$Res,
        _$_ForgotPasswordResponseDto>
    implements _$$_ForgotPasswordResponseDtoCopyWith<$Res> {
  __$$_ForgotPasswordResponseDtoCopyWithImpl(
      _$_ForgotPasswordResponseDto _value,
      $Res Function(_$_ForgotPasswordResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$_ForgotPasswordResponseDto(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordResponseDto implements _ForgotPasswordResponseDto {
  const _$_ForgotPasswordResponseDto(this.status, this.message);

  @override
  final int status;
  @override
  final String message;

  @override
  String toString() {
    return 'ForgotPasswordResponseDto(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordResponseDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordResponseDtoCopyWith<_$_ForgotPasswordResponseDto>
      get copyWith => __$$_ForgotPasswordResponseDtoCopyWithImpl<
          _$_ForgotPasswordResponseDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int status, String message) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return $default(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return $default?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message)? $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ForgotPasswordResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ForgotPasswordResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordResponseDto implements ForgotPasswordResponseDto {
  const factory _ForgotPasswordResponseDto(
      final int status, final String message) = _$_ForgotPasswordResponseDto;

  int get status;
  String get message;
  @JsonKey(ignore: true)
  _$$_ForgotPasswordResponseDtoCopyWith<_$_ForgotPasswordResponseDto>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ForgotPasswordResponseDtoCopyWithImpl<$Res, _$Json>
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
    return 'ForgotPasswordResponseDto.json(data: $data)';
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
    TResult Function(int status, String message) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int status, String message)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int status, String message)? $default, {
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
    TResult Function(_ForgotPasswordResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ForgotPasswordResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ForgotPasswordResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class Json implements ForgotPasswordResponseDto {
  const factory Json(final Map<String, dynamic> data) = _$Json;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$JsonCopyWith<_$Json> get copyWith => throw _privateConstructorUsedError;
}
