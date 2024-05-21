// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendOtpResponseDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String phoneNumber, String sessionId, int numCells)
        $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String phoneNumber, String sessionId, int numCells)?
        $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String phoneNumber, String sessionId, int numCells)?
        $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SendOtpResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SendOtpResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SendOtpResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpResponseDtoCopyWith<$Res> {
  factory $SendOtpResponseDtoCopyWith(
          SendOtpResponseDto value, $Res Function(SendOtpResponseDto) then) =
      _$SendOtpResponseDtoCopyWithImpl<$Res, SendOtpResponseDto>;
}

/// @nodoc
class _$SendOtpResponseDtoCopyWithImpl<$Res, $Val extends SendOtpResponseDto>
    implements $SendOtpResponseDtoCopyWith<$Res> {
  _$SendOtpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpResponseDtoImplCopyWith<$Res> {
  factory _$$SendOtpResponseDtoImplCopyWith(_$SendOtpResponseDtoImpl value,
          $Res Function(_$SendOtpResponseDtoImpl) then) =
      __$$SendOtpResponseDtoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String sessionId, int numCells});
}

/// @nodoc
class __$$SendOtpResponseDtoImplCopyWithImpl<$Res>
    extends _$SendOtpResponseDtoCopyWithImpl<$Res, _$SendOtpResponseDtoImpl>
    implements _$$SendOtpResponseDtoImplCopyWith<$Res> {
  __$$SendOtpResponseDtoImplCopyWithImpl(_$SendOtpResponseDtoImpl _value,
      $Res Function(_$SendOtpResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? sessionId = null,
    Object? numCells = null,
  }) {
    return _then(_$SendOtpResponseDtoImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      null == numCells
          ? _value.numCells
          : numCells // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendOtpResponseDtoImpl implements _SendOtpResponseDto {
  const _$SendOtpResponseDtoImpl(
      this.phoneNumber, this.sessionId, this.numCells);

  @override
  final String phoneNumber;
  @override
  final String sessionId;
  @override
  final int numCells;

  @override
  String toString() {
    return 'SendOtpResponseDto(phoneNumber: $phoneNumber, sessionId: $sessionId, numCells: $numCells)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpResponseDtoImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.numCells, numCells) ||
                other.numCells == numCells));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, sessionId, numCells);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpResponseDtoImplCopyWith<_$SendOtpResponseDtoImpl> get copyWith =>
      __$$SendOtpResponseDtoImplCopyWithImpl<_$SendOtpResponseDtoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String phoneNumber, String sessionId, int numCells)
        $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return $default(phoneNumber, sessionId, numCells);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String phoneNumber, String sessionId, int numCells)?
        $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return $default?.call(phoneNumber, sessionId, numCells);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String phoneNumber, String sessionId, int numCells)?
        $default, {
    TResult Function(Map<String, dynamic> data)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(phoneNumber, sessionId, numCells);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SendOtpResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SendOtpResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SendOtpResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SendOtpResponseDto implements SendOtpResponseDto {
  const factory _SendOtpResponseDto(final String phoneNumber,
      final String sessionId, final int numCells) = _$SendOtpResponseDtoImpl;

  String get phoneNumber;
  String get sessionId;
  int get numCells;
  @JsonKey(ignore: true)
  _$$SendOtpResponseDtoImplCopyWith<_$SendOtpResponseDtoImpl> get copyWith =>
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
    extends _$SendOtpResponseDtoCopyWithImpl<$Res, _$JsonImpl>
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
    return 'SendOtpResponseDto.json(data: $data)';
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
    TResult Function(String phoneNumber, String sessionId, int numCells)
        $default, {
    required TResult Function(Map<String, dynamic> data) json,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String phoneNumber, String sessionId, int numCells)?
        $default, {
    TResult? Function(Map<String, dynamic> data)? json,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String phoneNumber, String sessionId, int numCells)?
        $default, {
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
    TResult Function(_SendOtpResponseDto value) $default, {
    required TResult Function(Json value) json,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SendOtpResponseDto value)? $default, {
    TResult? Function(Json value)? json,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SendOtpResponseDto value)? $default, {
    TResult Function(Json value)? json,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class Json implements SendOtpResponseDto {
  const factory Json(final Map<String, dynamic> data) = _$JsonImpl;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$JsonImplCopyWith<_$JsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
