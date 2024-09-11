// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectCardStateCopyWith<$Res> {
  factory $SelectCardStateCopyWith(
          SelectCardState value, $Res Function(SelectCardState) then) =
      _$SelectCardStateCopyWithImpl<$Res, SelectCardState>;
}

/// @nodoc
class _$SelectCardStateCopyWithImpl<$Res, $Val extends SelectCardState>
    implements $SelectCardStateCopyWith<$Res> {
  _$SelectCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectCardFailureImplCopyWith<$Res> {
  factory _$$SelectCardFailureImplCopyWith(_$SelectCardFailureImpl value,
          $Res Function(_$SelectCardFailureImpl) then) =
      __$$SelectCardFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SelectCardFailureImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$SelectCardFailureImpl>
    implements _$$SelectCardFailureImplCopyWith<$Res> {
  __$$SelectCardFailureImplCopyWithImpl(_$SelectCardFailureImpl _value,
      $Res Function(_$SelectCardFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SelectCardFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCardFailureImpl implements SelectCardFailure {
  const _$SelectCardFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SelectCardState.selectCardFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCardFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCardFailureImplCopyWith<_$SelectCardFailureImpl> get copyWith =>
      __$$SelectCardFailureImplCopyWithImpl<_$SelectCardFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) {
    return selectCardFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) {
    return selectCardFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardFailure != null) {
      return selectCardFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) {
    return selectCardFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) {
    return selectCardFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardFailure != null) {
      return selectCardFailure(this);
    }
    return orElse();
  }
}

abstract class SelectCardFailure implements SelectCardState {
  const factory SelectCardFailure(final String message) =
      _$SelectCardFailureImpl;

  String get message;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCardFailureImplCopyWith<_$SelectCardFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCardInProgressImplCopyWith<$Res> {
  factory _$$SelectCardInProgressImplCopyWith(_$SelectCardInProgressImpl value,
          $Res Function(_$SelectCardInProgressImpl) then) =
      __$$SelectCardInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectCardInProgressImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$SelectCardInProgressImpl>
    implements _$$SelectCardInProgressImplCopyWith<$Res> {
  __$$SelectCardInProgressImplCopyWithImpl(_$SelectCardInProgressImpl _value,
      $Res Function(_$SelectCardInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectCardInProgressImpl implements SelectCardInProgress {
  const _$SelectCardInProgressImpl();

  @override
  String toString() {
    return 'SelectCardState.selectCardInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCardInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) {
    return selectCardInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) {
    return selectCardInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardInProgress != null) {
      return selectCardInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) {
    return selectCardInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) {
    return selectCardInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardInProgress != null) {
      return selectCardInProgress(this);
    }
    return orElse();
  }
}

abstract class SelectCardInProgress implements SelectCardState {
  const factory SelectCardInProgress() = _$SelectCardInProgressImpl;
}

/// @nodoc
abstract class _$$CheckPostalCodeImplCopyWith<$Res> {
  factory _$$CheckPostalCodeImplCopyWith(_$CheckPostalCodeImpl value,
          $Res Function(_$CheckPostalCodeImpl) then) =
      __$$CheckPostalCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardTypeId});
}

/// @nodoc
class __$$CheckPostalCodeImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$CheckPostalCodeImpl>
    implements _$$CheckPostalCodeImplCopyWith<$Res> {
  __$$CheckPostalCodeImplCopyWithImpl(
      _$CheckPostalCodeImpl _value, $Res Function(_$CheckPostalCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardTypeId = null,
  }) {
    return _then(_$CheckPostalCodeImpl(
      cardTypeId: null == cardTypeId
          ? _value.cardTypeId
          : cardTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckPostalCodeImpl implements CheckPostalCode {
  const _$CheckPostalCodeImpl({required this.cardTypeId});

  @override
  final int cardTypeId;

  @override
  String toString() {
    return 'SelectCardState.checkPostalCode(cardTypeId: $cardTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPostalCodeImpl &&
            (identical(other.cardTypeId, cardTypeId) ||
                other.cardTypeId == cardTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardTypeId);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPostalCodeImplCopyWith<_$CheckPostalCodeImpl> get copyWith =>
      __$$CheckPostalCodeImplCopyWithImpl<_$CheckPostalCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) {
    return checkPostalCode(cardTypeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) {
    return checkPostalCode?.call(cardTypeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) {
    if (checkPostalCode != null) {
      return checkPostalCode(cardTypeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) {
    return checkPostalCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) {
    return checkPostalCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) {
    if (checkPostalCode != null) {
      return checkPostalCode(this);
    }
    return orElse();
  }
}

abstract class CheckPostalCode implements SelectCardState {
  const factory CheckPostalCode({required final int cardTypeId}) =
      _$CheckPostalCodeImpl;

  int get cardTypeId;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPostalCodeImplCopyWith<_$CheckPostalCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAddressImplCopyWith<$Res> {
  factory _$$SelectAddressImplCopyWith(
          _$SelectAddressImpl value, $Res Function(_$SelectAddressImpl) then) =
      __$$SelectAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AddressEntity> addressList, int cardTypeId});
}

/// @nodoc
class __$$SelectAddressImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$SelectAddressImpl>
    implements _$$SelectAddressImplCopyWith<$Res> {
  __$$SelectAddressImplCopyWithImpl(
      _$SelectAddressImpl _value, $Res Function(_$SelectAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
    Object? cardTypeId = null,
  }) {
    return _then(_$SelectAddressImpl(
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
      cardTypeId: null == cardTypeId
          ? _value.cardTypeId
          : cardTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectAddressImpl implements SelectAddress {
  const _$SelectAddressImpl(
      {required final List<AddressEntity> addressList,
      required this.cardTypeId})
      : _addressList = addressList;

  final List<AddressEntity> _addressList;
  @override
  List<AddressEntity> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  final int cardTypeId;

  @override
  String toString() {
    return 'SelectCardState.selectAddress(addressList: $addressList, cardTypeId: $cardTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAddressImpl &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList) &&
            (identical(other.cardTypeId, cardTypeId) ||
                other.cardTypeId == cardTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_addressList), cardTypeId);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAddressImplCopyWith<_$SelectAddressImpl> get copyWith =>
      __$$SelectAddressImplCopyWithImpl<_$SelectAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) {
    return selectAddress(addressList, cardTypeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) {
    return selectAddress?.call(addressList, cardTypeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectAddress != null) {
      return selectAddress(addressList, cardTypeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) {
    return selectAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) {
    return selectAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectAddress != null) {
      return selectAddress(this);
    }
    return orElse();
  }
}

abstract class SelectAddress implements SelectCardState {
  const factory SelectAddress(
      {required final List<AddressEntity> addressList,
      required final int cardTypeId}) = _$SelectAddressImpl;

  List<AddressEntity> get addressList;
  int get cardTypeId;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAddressImplCopyWith<_$SelectAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCardSuccessImplCopyWith<$Res> {
  factory _$$SelectCardSuccessImplCopyWith(_$SelectCardSuccessImpl value,
          $Res Function(_$SelectCardSuccessImpl) then) =
      __$$SelectCardSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String priceLabel,
      List<AddressEntity> addressList});
}

/// @nodoc
class __$$SelectCardSuccessImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$SelectCardSuccessImpl>
    implements _$$SelectCardSuccessImplCopyWith<$Res> {
  __$$SelectCardSuccessImplCopyWithImpl(_$SelectCardSuccessImpl _value,
      $Res Function(_$SelectCardSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? priceLabel = null,
    Object? addressList = null,
  }) {
    return _then(_$SelectCardSuccessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priceLabel: null == priceLabel
          ? _value.priceLabel
          : priceLabel // ignore: cast_nullable_to_non_nullable
              as String,
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
    ));
  }
}

/// @nodoc

class _$SelectCardSuccessImpl implements SelectCardSuccess {
  const _$SelectCardSuccessImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.priceLabel,
      required final List<AddressEntity> addressList})
      : _addressList = addressList;

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String priceLabel;
  final List<AddressEntity> _addressList;
  @override
  List<AddressEntity> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  String toString() {
    return 'SelectCardState.selectCardSuccess(id: $id, title: $title, description: $description, priceLabel: $priceLabel, addressList: $addressList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCardSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceLabel, priceLabel) ||
                other.priceLabel == priceLabel) &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      priceLabel, const DeepCollectionEquality().hash(_addressList));

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCardSuccessImplCopyWith<_$SelectCardSuccessImpl> get copyWith =>
      __$$SelectCardSuccessImplCopyWithImpl<_$SelectCardSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) {
    return selectCardSuccess(id, title, description, priceLabel, addressList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) {
    return selectCardSuccess?.call(
        id, title, description, priceLabel, addressList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardSuccess != null) {
      return selectCardSuccess(id, title, description, priceLabel, addressList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) {
    return selectCardSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) {
    return selectCardSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardSuccess != null) {
      return selectCardSuccess(this);
    }
    return orElse();
  }
}

abstract class SelectCardSuccess implements SelectCardState {
  const factory SelectCardSuccess(
          {required final int id,
          required final String title,
          required final String description,
          required final String priceLabel,
          required final List<AddressEntity> addressList}) =
      _$SelectCardSuccessImpl;

  int get id;
  String get title;
  String get description;
  String get priceLabel;
  List<AddressEntity> get addressList;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCardSuccessImplCopyWith<_$SelectCardSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCardValidatedImplCopyWith<$Res> {
  factory _$$SelectCardValidatedImplCopyWith(_$SelectCardValidatedImpl value,
          $Res Function(_$SelectCardValidatedImpl) then) =
      __$$SelectCardValidatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectCardValidatedImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$SelectCardValidatedImpl>
    implements _$$SelectCardValidatedImplCopyWith<$Res> {
  __$$SelectCardValidatedImplCopyWithImpl(_$SelectCardValidatedImpl _value,
      $Res Function(_$SelectCardValidatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectCardValidatedImpl implements SelectCardValidated {
  const _$SelectCardValidatedImpl();

  @override
  String toString() {
    return 'SelectCardState.selectCardValidated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCardValidatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) selectCardFailure,
    required TResult Function() selectCardInProgress,
    required TResult Function(int cardTypeId) checkPostalCode,
    required TResult Function(List<AddressEntity> addressList, int cardTypeId)
        selectAddress,
    required TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)
        selectCardSuccess,
    required TResult Function() selectCardValidated,
  }) {
    return selectCardValidated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? selectCardFailure,
    TResult? Function()? selectCardInProgress,
    TResult? Function(int cardTypeId)? checkPostalCode,
    TResult? Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult? Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult? Function()? selectCardValidated,
  }) {
    return selectCardValidated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? selectCardFailure,
    TResult Function()? selectCardInProgress,
    TResult Function(int cardTypeId)? checkPostalCode,
    TResult Function(List<AddressEntity> addressList, int cardTypeId)?
        selectAddress,
    TResult Function(int id, String title, String description,
            String priceLabel, List<AddressEntity> addressList)?
        selectCardSuccess,
    TResult Function()? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardValidated != null) {
      return selectCardValidated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCardFailure value) selectCardFailure,
    required TResult Function(SelectCardInProgress value) selectCardInProgress,
    required TResult Function(CheckPostalCode value) checkPostalCode,
    required TResult Function(SelectAddress value) selectAddress,
    required TResult Function(SelectCardSuccess value) selectCardSuccess,
    required TResult Function(SelectCardValidated value) selectCardValidated,
  }) {
    return selectCardValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCardFailure value)? selectCardFailure,
    TResult? Function(SelectCardInProgress value)? selectCardInProgress,
    TResult? Function(CheckPostalCode value)? checkPostalCode,
    TResult? Function(SelectAddress value)? selectAddress,
    TResult? Function(SelectCardSuccess value)? selectCardSuccess,
    TResult? Function(SelectCardValidated value)? selectCardValidated,
  }) {
    return selectCardValidated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCardFailure value)? selectCardFailure,
    TResult Function(SelectCardInProgress value)? selectCardInProgress,
    TResult Function(CheckPostalCode value)? checkPostalCode,
    TResult Function(SelectAddress value)? selectAddress,
    TResult Function(SelectCardSuccess value)? selectCardSuccess,
    TResult Function(SelectCardValidated value)? selectCardValidated,
    required TResult orElse(),
  }) {
    if (selectCardValidated != null) {
      return selectCardValidated(this);
    }
    return orElse();
  }
}

abstract class SelectCardValidated implements SelectCardState {
  const factory SelectCardValidated() = _$SelectCardValidatedImpl;
}
