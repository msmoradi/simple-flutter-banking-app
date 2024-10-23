// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionCheckoutState {
  TransactionCheckoutStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get conversionFee => throw _privateConstructorUsedError;
  DropdownChipType get sourceDepositType => throw _privateConstructorUsedError;
  UserInfo get sourceUserInfo => throw _privateConstructorUsedError;
  DropdownChipType get destinationDepositType =>
      throw _privateConstructorUsedError;
  UserInfo get destinationUserInfo => throw _privateConstructorUsedError;

  /// Create a copy of TransactionCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCheckoutStateCopyWith<TransactionCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCheckoutStateCopyWith<$Res> {
  factory $TransactionCheckoutStateCopyWith(TransactionCheckoutState value,
          $Res Function(TransactionCheckoutState) then) =
      _$TransactionCheckoutStateCopyWithImpl<$Res, TransactionCheckoutState>;
  @useResult
  $Res call(
      {TransactionCheckoutStatus status,
      String errorMessage,
      String conversionFee,
      DropdownChipType sourceDepositType,
      UserInfo sourceUserInfo,
      DropdownChipType destinationDepositType,
      UserInfo destinationUserInfo});
}

/// @nodoc
class _$TransactionCheckoutStateCopyWithImpl<$Res,
        $Val extends TransactionCheckoutState>
    implements $TransactionCheckoutStateCopyWith<$Res> {
  _$TransactionCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? conversionFee = null,
    Object? sourceDepositType = null,
    Object? sourceUserInfo = freezed,
    Object? destinationDepositType = null,
    Object? destinationUserInfo = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionCheckoutStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      conversionFee: null == conversionFee
          ? _value.conversionFee
          : conversionFee // ignore: cast_nullable_to_non_nullable
              as String,
      sourceDepositType: null == sourceDepositType
          ? _value.sourceDepositType
          : sourceDepositType // ignore: cast_nullable_to_non_nullable
              as DropdownChipType,
      sourceUserInfo: freezed == sourceUserInfo
          ? _value.sourceUserInfo
          : sourceUserInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      destinationDepositType: null == destinationDepositType
          ? _value.destinationDepositType
          : destinationDepositType // ignore: cast_nullable_to_non_nullable
              as DropdownChipType,
      destinationUserInfo: freezed == destinationUserInfo
          ? _value.destinationUserInfo
          : destinationUserInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionCheckoutStateImplCopyWith<$Res>
    implements $TransactionCheckoutStateCopyWith<$Res> {
  factory _$$TransactionCheckoutStateImplCopyWith(
          _$TransactionCheckoutStateImpl value,
          $Res Function(_$TransactionCheckoutStateImpl) then) =
      __$$TransactionCheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionCheckoutStatus status,
      String errorMessage,
      String conversionFee,
      DropdownChipType sourceDepositType,
      UserInfo sourceUserInfo,
      DropdownChipType destinationDepositType,
      UserInfo destinationUserInfo});
}

/// @nodoc
class __$$TransactionCheckoutStateImplCopyWithImpl<$Res>
    extends _$TransactionCheckoutStateCopyWithImpl<$Res,
        _$TransactionCheckoutStateImpl>
    implements _$$TransactionCheckoutStateImplCopyWith<$Res> {
  __$$TransactionCheckoutStateImplCopyWithImpl(
      _$TransactionCheckoutStateImpl _value,
      $Res Function(_$TransactionCheckoutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? conversionFee = null,
    Object? sourceDepositType = null,
    Object? sourceUserInfo = freezed,
    Object? destinationDepositType = null,
    Object? destinationUserInfo = freezed,
  }) {
    return _then(_$TransactionCheckoutStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionCheckoutStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      conversionFee: null == conversionFee
          ? _value.conversionFee
          : conversionFee // ignore: cast_nullable_to_non_nullable
              as String,
      sourceDepositType: null == sourceDepositType
          ? _value.sourceDepositType
          : sourceDepositType // ignore: cast_nullable_to_non_nullable
              as DropdownChipType,
      sourceUserInfo: freezed == sourceUserInfo
          ? _value.sourceUserInfo
          : sourceUserInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      destinationDepositType: null == destinationDepositType
          ? _value.destinationDepositType
          : destinationDepositType // ignore: cast_nullable_to_non_nullable
              as DropdownChipType,
      destinationUserInfo: freezed == destinationUserInfo
          ? _value.destinationUserInfo
          : destinationUserInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }
}

/// @nodoc

class _$TransactionCheckoutStateImpl implements _TransactionCheckoutState {
  const _$TransactionCheckoutStateImpl(
      {this.status = TransactionCheckoutStatus.initial,
      this.errorMessage = '',
      this.conversionFee = '',
      this.sourceDepositType = DropdownChipType.rialDeposit,
      required this.sourceUserInfo,
      this.destinationDepositType = DropdownChipType.rialDeposit,
      required this.destinationUserInfo});

  @override
  @JsonKey()
  final TransactionCheckoutStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String conversionFee;
  @override
  @JsonKey()
  final DropdownChipType sourceDepositType;
  @override
  final UserInfo sourceUserInfo;
  @override
  @JsonKey()
  final DropdownChipType destinationDepositType;
  @override
  final UserInfo destinationUserInfo;

  @override
  String toString() {
    return 'TransactionCheckoutState(status: $status, errorMessage: $errorMessage, conversionFee: $conversionFee, sourceDepositType: $sourceDepositType, sourceUserInfo: $sourceUserInfo, destinationDepositType: $destinationDepositType, destinationUserInfo: $destinationUserInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCheckoutStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.conversionFee, conversionFee) ||
                other.conversionFee == conversionFee) &&
            (identical(other.sourceDepositType, sourceDepositType) ||
                other.sourceDepositType == sourceDepositType) &&
            const DeepCollectionEquality()
                .equals(other.sourceUserInfo, sourceUserInfo) &&
            (identical(other.destinationDepositType, destinationDepositType) ||
                other.destinationDepositType == destinationDepositType) &&
            const DeepCollectionEquality()
                .equals(other.destinationUserInfo, destinationUserInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorMessage,
      conversionFee,
      sourceDepositType,
      const DeepCollectionEquality().hash(sourceUserInfo),
      destinationDepositType,
      const DeepCollectionEquality().hash(destinationUserInfo));

  /// Create a copy of TransactionCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCheckoutStateImplCopyWith<_$TransactionCheckoutStateImpl>
      get copyWith => __$$TransactionCheckoutStateImplCopyWithImpl<
          _$TransactionCheckoutStateImpl>(this, _$identity);
}

abstract class _TransactionCheckoutState implements TransactionCheckoutState {
  const factory _TransactionCheckoutState(
          {final TransactionCheckoutStatus status,
          final String errorMessage,
          final String conversionFee,
          final DropdownChipType sourceDepositType,
          required final UserInfo sourceUserInfo,
          final DropdownChipType destinationDepositType,
          required final UserInfo destinationUserInfo}) =
      _$TransactionCheckoutStateImpl;

  @override
  TransactionCheckoutStatus get status;
  @override
  String get errorMessage;
  @override
  String get conversionFee;
  @override
  DropdownChipType get sourceDepositType;
  @override
  UserInfo get sourceUserInfo;
  @override
  DropdownChipType get destinationDepositType;
  @override
  UserInfo get destinationUserInfo;

  /// Create a copy of TransactionCheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCheckoutStateImplCopyWith<_$TransactionCheckoutStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
