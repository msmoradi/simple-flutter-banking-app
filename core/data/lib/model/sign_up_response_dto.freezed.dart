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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpResponseDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Long expiresIn, int codeLength) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Long expiresIn, int codeLength)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Long expiresIn, int codeLength)? $default, {
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
abstract class _$$SignUpResponseDtoImplCopyWith<$Res> {
  factory _$$SignUpResponseDtoImplCopyWith(_$SignUpResponseDtoImpl value,
          $Res Function(_$SignUpResponseDtoImpl) then) =
      __$$SignUpResponseDtoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Long expiresIn, int codeLength});
}

/// @nodoc
class __$$SignUpResponseDtoImplCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res, _$SignUpResponseDtoImpl>
    implements _$$SignUpResponseDtoImplCopyWith<$Res> {
  __$$SignUpResponseDtoImplCopyWithImpl(_$SignUpResponseDtoImpl _value,
      $Res Function(_$SignUpResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresIn = null,
    Object? codeLength = null,
  }) {
    return _then(_$SignUpResponseDtoImpl(
      null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as Long,
      null == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SignUpResponseDtoImpl implements _SignUpResponseDto {
  const _$SignUpResponseDtoImpl(this.expiresIn, this.codeLength);

  @override
  final Long expiresIn;
  @override
  final int codeLength;

  @override
  String toString() {
    return 'SignUpResponseDto(expiresIn: $expiresIn, codeLength: $codeLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseDtoImpl &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.codeLength, codeLength) ||
                other.codeLength == codeLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expiresIn, codeLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseDtoImplCopyWith<_$SignUpResponseDtoImpl> get copyWith =>
      __$$SignUpResponseDtoImplCopyWithImpl<_$SignUpResponseDtoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Long expiresIn, int codeLength) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return $default(expiresIn, codeLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Long expiresIn, int codeLength)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return $default?.call(expiresIn, codeLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Long expiresIn, int codeLength)? $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(expiresIn, codeLength);
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
  const factory _SignUpResponseDto(final Long expiresIn, final int codeLength) =
      _$SignUpResponseDtoImpl;

  Long get expiresIn;
  int get codeLength;
  @JsonKey(ignore: true)
  _$$SignUpResponseDtoImplCopyWith<_$SignUpResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonImplCopyWith<$Res> {
  factory _$$JsonImplCopyWith(
          _$JsonImpl value, $Res Function(_$JsonImpl) then) =
      __$$JsonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$JsonImplCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res, _$JsonImpl>
    implements _$$JsonImplCopyWith<$Res> {
  __$$JsonImplCopyWithImpl(_$JsonImpl _value, $Res Function(_$JsonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$JsonImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$JsonImpl implements Json {
  const _$JsonImpl(final Map<String, dynamic> data) : _data = data;

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonImplCopyWith<_$JsonImpl> get copyWith =>
      __$$JsonImplCopyWithImpl<_$JsonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Long expiresIn, int codeLength) $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Long expiresIn, int codeLength)? $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Long expiresIn, int codeLength)? $default, {
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
  const factory Json(final Map<String, dynamic> data) = _$JsonImpl;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$JsonImplCopyWith<_$JsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
