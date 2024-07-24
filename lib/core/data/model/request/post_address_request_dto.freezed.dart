// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_address_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostAddressRequestDto _$PostAddressRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _PostAddressRequestDto.fromJson(json);
}

/// @nodoc
mixin _$PostAddressRequestDto {
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostAddressRequestDtoCopyWith<PostAddressRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAddressRequestDtoCopyWith<$Res> {
  factory $PostAddressRequestDtoCopyWith(PostAddressRequestDto value,
          $Res Function(PostAddressRequestDto) then) =
      _$PostAddressRequestDtoCopyWithImpl<$Res, PostAddressRequestDto>;
  @useResult
  $Res call({String postalCode});
}

/// @nodoc
class _$PostAddressRequestDtoCopyWithImpl<$Res,
        $Val extends PostAddressRequestDto>
    implements $PostAddressRequestDtoCopyWith<$Res> {
  _$PostAddressRequestDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$PostAddressRequestDtoImplCopyWith<$Res>
    implements $PostAddressRequestDtoCopyWith<$Res> {
  factory _$$PostAddressRequestDtoImplCopyWith(
          _$PostAddressRequestDtoImpl value,
          $Res Function(_$PostAddressRequestDtoImpl) then) =
      __$$PostAddressRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postalCode});
}

/// @nodoc
class __$$PostAddressRequestDtoImplCopyWithImpl<$Res>
    extends _$PostAddressRequestDtoCopyWithImpl<$Res,
        _$PostAddressRequestDtoImpl>
    implements _$$PostAddressRequestDtoImplCopyWith<$Res> {
  __$$PostAddressRequestDtoImplCopyWithImpl(_$PostAddressRequestDtoImpl _value,
      $Res Function(_$PostAddressRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = null,
  }) {
    return _then(_$PostAddressRequestDtoImpl(
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostAddressRequestDtoImpl implements _PostAddressRequestDto {
  const _$PostAddressRequestDtoImpl({required this.postalCode});

  factory _$PostAddressRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostAddressRequestDtoImplFromJson(json);

  @override
  final String postalCode;

  @override
  String toString() {
    return 'PostAddressRequestDto(postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAddressRequestDtoImpl &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAddressRequestDtoImplCopyWith<_$PostAddressRequestDtoImpl>
      get copyWith => __$$PostAddressRequestDtoImplCopyWithImpl<
          _$PostAddressRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostAddressRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _PostAddressRequestDto implements PostAddressRequestDto {
  const factory _PostAddressRequestDto({required final String postalCode}) =
      _$PostAddressRequestDtoImpl;

  factory _PostAddressRequestDto.fromJson(Map<String, dynamic> json) =
      _$PostAddressRequestDtoImpl.fromJson;

  @override
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$PostAddressRequestDtoImplCopyWith<_$PostAddressRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
