// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_shipping_time_slots_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardShippingTimeSlotsResponseDto _$CardShippingTimeSlotsResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CardShippingTimeSlotsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CardShippingTimeSlotsResponseDto {
  /// Serializes this CardShippingTimeSlotsResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardShippingTimeSlotsResponseDtoCopyWith<$Res> {
  factory $CardShippingTimeSlotsResponseDtoCopyWith(
          CardShippingTimeSlotsResponseDto value,
          $Res Function(CardShippingTimeSlotsResponseDto) then) =
      _$CardShippingTimeSlotsResponseDtoCopyWithImpl<$Res,
          CardShippingTimeSlotsResponseDto>;
}

/// @nodoc
class _$CardShippingTimeSlotsResponseDtoCopyWithImpl<$Res,
        $Val extends CardShippingTimeSlotsResponseDto>
    implements $CardShippingTimeSlotsResponseDtoCopyWith<$Res> {
  _$CardShippingTimeSlotsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardShippingTimeSlotsResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CardShippingTimeSlotsResponseDtoImplCopyWith<$Res> {
  factory _$$CardShippingTimeSlotsResponseDtoImplCopyWith(
          _$CardShippingTimeSlotsResponseDtoImpl value,
          $Res Function(_$CardShippingTimeSlotsResponseDtoImpl) then) =
      __$$CardShippingTimeSlotsResponseDtoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardShippingTimeSlotsResponseDtoImplCopyWithImpl<$Res>
    extends _$CardShippingTimeSlotsResponseDtoCopyWithImpl<$Res,
        _$CardShippingTimeSlotsResponseDtoImpl>
    implements _$$CardShippingTimeSlotsResponseDtoImplCopyWith<$Res> {
  __$$CardShippingTimeSlotsResponseDtoImplCopyWithImpl(
      _$CardShippingTimeSlotsResponseDtoImpl _value,
      $Res Function(_$CardShippingTimeSlotsResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardShippingTimeSlotsResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CardShippingTimeSlotsResponseDtoImpl
    implements _CardShippingTimeSlotsResponseDto {
  const _$CardShippingTimeSlotsResponseDtoImpl();

  factory _$CardShippingTimeSlotsResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CardShippingTimeSlotsResponseDtoImplFromJson(json);

  @override
  String toString() {
    return 'CardShippingTimeSlotsResponseDto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardShippingTimeSlotsResponseDtoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CardShippingTimeSlotsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CardShippingTimeSlotsResponseDto
    implements CardShippingTimeSlotsResponseDto {
  const factory _CardShippingTimeSlotsResponseDto() =
      _$CardShippingTimeSlotsResponseDtoImpl;

  factory _CardShippingTimeSlotsResponseDto.fromJson(
          Map<String, dynamic> json) =
      _$CardShippingTimeSlotsResponseDtoImpl.fromJson;
}
