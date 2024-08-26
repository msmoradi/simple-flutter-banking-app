// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_address_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostAddressResponseDto _$PostAddressResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _AddressResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PostAddressResponseDto {
  /// Serializes this PostAddressResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAddressResponseDtoCopyWith<$Res> {
  factory $PostAddressResponseDtoCopyWith(PostAddressResponseDto value,
          $Res Function(PostAddressResponseDto) then) =
      _$PostAddressResponseDtoCopyWithImpl<$Res, PostAddressResponseDto>;
}

/// @nodoc
class _$PostAddressResponseDtoCopyWithImpl<$Res,
        $Val extends PostAddressResponseDto>
    implements $PostAddressResponseDtoCopyWith<$Res> {
  _$PostAddressResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostAddressResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddressResponseDtoImplCopyWith<$Res> {
  factory _$$AddressResponseDtoImplCopyWith(_$AddressResponseDtoImpl value,
          $Res Function(_$AddressResponseDtoImpl) then) =
      __$$AddressResponseDtoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddressResponseDtoImplCopyWithImpl<$Res>
    extends _$PostAddressResponseDtoCopyWithImpl<$Res, _$AddressResponseDtoImpl>
    implements _$$AddressResponseDtoImplCopyWith<$Res> {
  __$$AddressResponseDtoImplCopyWithImpl(_$AddressResponseDtoImpl _value,
      $Res Function(_$AddressResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostAddressResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AddressResponseDtoImpl implements _AddressResponseDto {
  const _$AddressResponseDtoImpl();

  factory _$AddressResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressResponseDtoImplFromJson(json);

  @override
  String toString() {
    return 'PostAddressResponseDto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddressResponseDtoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressResponseDto implements PostAddressResponseDto {
  const factory _AddressResponseDto() = _$AddressResponseDtoImpl;

  factory _AddressResponseDto.fromJson(Map<String, dynamic> json) =
      _$AddressResponseDtoImpl.fromJson;
}
