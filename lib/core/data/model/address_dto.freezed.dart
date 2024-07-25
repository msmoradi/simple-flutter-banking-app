// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  int? get id => throw _privateConstructorUsedError;
  int? get accountId => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  CityDto get city => throw _privateConstructorUsedError;
  StateDto get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call(
      {int? id,
      int? accountId,
      String postalCode,
      double latitude,
      double longitude,
      String address,
      CityDto city,
      StateDto state});

  $CityDtoCopyWith<$Res> get city;
  $StateDtoCopyWith<$Res> get state;
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? postalCode = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDtoCopyWith<$Res> get city {
    return $CityDtoCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StateDtoCopyWith<$Res> get state {
    return $StateDtoCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? accountId,
      String postalCode,
      double latitude,
      double longitude,
      String address,
      CityDto city,
      StateDto state});

  @override
  $CityDtoCopyWith<$Res> get city;
  @override
  $StateDtoCopyWith<$Res> get state;
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? postalCode = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
  }) {
    return _then(_$AddressDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl implements _AddressDto {
  const _$AddressDtoImpl(
      {this.id,
      this.accountId,
      required this.postalCode,
      required this.latitude,
      required this.longitude,
      required this.address,
      required this.city,
      required this.state});

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final int? accountId;
  @override
  final String postalCode;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String address;
  @override
  final CityDto city;
  @override
  final StateDto state;

  @override
  String toString() {
    return 'AddressDto(id: $id, accountId: $accountId, postalCode: $postalCode, latitude: $latitude, longitude: $longitude, address: $address, city: $city, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, postalCode,
      latitude, longitude, address, city, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto implements AddressDto {
  const factory _AddressDto(
      {final int? id,
      final int? accountId,
      required final String postalCode,
      required final double latitude,
      required final double longitude,
      required final String address,
      required final CityDto city,
      required final StateDto state}) = _$AddressDtoImpl;

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  int? get id;
  @override
  int? get accountId;
  @override
  String get postalCode;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get address;
  @override
  CityDto get city;
  @override
  StateDto get state;
  @override
  @JsonKey(ignore: true)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
