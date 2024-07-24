// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericResponseDto<T> _$GenericResponseDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _GenericResponseDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$GenericResponseDto<T> {
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  Pageable get pageable => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<T> get content => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  List<Sort> get sort => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericResponseDtoCopyWith<T, GenericResponseDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericResponseDtoCopyWith<T, $Res> {
  factory $GenericResponseDtoCopyWith(GenericResponseDto<T> value,
          $Res Function(GenericResponseDto<T>) then) =
      _$GenericResponseDtoCopyWithImpl<T, $Res, GenericResponseDto<T>>;
  @useResult
  $Res call(
      {int totalPages,
      int totalElements,
      Pageable pageable,
      bool first,
      bool last,
      int numberOfElements,
      int size,
      List<T> content,
      int number,
      List<Sort> sort,
      bool empty});

  $PageableCopyWith<$Res> get pageable;
}

/// @nodoc
class _$GenericResponseDtoCopyWithImpl<T, $Res,
        $Val extends GenericResponseDto<T>>
    implements $GenericResponseDtoCopyWith<T, $Res> {
  _$GenericResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalElements = null,
    Object? pageable = null,
    Object? first = null,
    Object? last = null,
    Object? numberOfElements = null,
    Object? size = null,
    Object? content = null,
    Object? number = null,
    Object? sort = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<Sort>,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenericResponseDtoImplCopyWith<T, $Res>
    implements $GenericResponseDtoCopyWith<T, $Res> {
  factory _$$GenericResponseDtoImplCopyWith(_$GenericResponseDtoImpl<T> value,
          $Res Function(_$GenericResponseDtoImpl<T>) then) =
      __$$GenericResponseDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int totalPages,
      int totalElements,
      Pageable pageable,
      bool first,
      bool last,
      int numberOfElements,
      int size,
      List<T> content,
      int number,
      List<Sort> sort,
      bool empty});

  @override
  $PageableCopyWith<$Res> get pageable;
}

/// @nodoc
class __$$GenericResponseDtoImplCopyWithImpl<T, $Res>
    extends _$GenericResponseDtoCopyWithImpl<T, $Res,
        _$GenericResponseDtoImpl<T>>
    implements _$$GenericResponseDtoImplCopyWith<T, $Res> {
  __$$GenericResponseDtoImplCopyWithImpl(_$GenericResponseDtoImpl<T> _value,
      $Res Function(_$GenericResponseDtoImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalElements = null,
    Object? pageable = null,
    Object? first = null,
    Object? last = null,
    Object? numberOfElements = null,
    Object? size = null,
    Object? content = null,
    Object? number = null,
    Object? sort = null,
    Object? empty = null,
  }) {
    return _then(_$GenericResponseDtoImpl<T>(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value._sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<Sort>,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericResponseDtoImpl<T> implements _GenericResponseDto<T> {
  const _$GenericResponseDtoImpl(
      {required this.totalPages,
      required this.totalElements,
      required this.pageable,
      required this.first,
      required this.last,
      required this.numberOfElements,
      required this.size,
      required final List<T> content,
      required this.number,
      required final List<Sort> sort,
      required this.empty})
      : _content = content,
        _sort = sort;

  factory _$GenericResponseDtoImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$GenericResponseDtoImplFromJson(json, fromJsonT);

  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final Pageable pageable;
  @override
  final bool first;
  @override
  final bool last;
  @override
  final int numberOfElements;
  @override
  final int size;
  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int number;
  final List<Sort> _sort;
  @override
  List<Sort> get sort {
    if (_sort is EqualUnmodifiableListView) return _sort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sort);
  }

  @override
  final bool empty;

  @override
  String toString() {
    return 'GenericResponseDto<$T>(totalPages: $totalPages, totalElements: $totalElements, pageable: $pageable, first: $first, last: $last, numberOfElements: $numberOfElements, size: $size, content: $content, number: $number, sort: $sort, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericResponseDtoImpl<T> &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other._sort, _sort) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalPages,
      totalElements,
      pageable,
      first,
      last,
      numberOfElements,
      size,
      const DeepCollectionEquality().hash(_content),
      number,
      const DeepCollectionEquality().hash(_sort),
      empty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericResponseDtoImplCopyWith<T, _$GenericResponseDtoImpl<T>>
      get copyWith => __$$GenericResponseDtoImplCopyWithImpl<T,
          _$GenericResponseDtoImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$GenericResponseDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _GenericResponseDto<T> implements GenericResponseDto<T> {
  const factory _GenericResponseDto(
      {required final int totalPages,
      required final int totalElements,
      required final Pageable pageable,
      required final bool first,
      required final bool last,
      required final int numberOfElements,
      required final int size,
      required final List<T> content,
      required final int number,
      required final List<Sort> sort,
      required final bool empty}) = _$GenericResponseDtoImpl<T>;

  factory _GenericResponseDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$GenericResponseDtoImpl<T>.fromJson;

  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  Pageable get pageable;
  @override
  bool get first;
  @override
  bool get last;
  @override
  int get numberOfElements;
  @override
  int get size;
  @override
  List<T> get content;
  @override
  int get number;
  @override
  List<Sort> get sort;
  @override
  bool get empty;
  @override
  @JsonKey(ignore: true)
  _$$GenericResponseDtoImplCopyWith<T, _$GenericResponseDtoImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  bool get unpaged => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  List<Sort> get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {bool unpaged,
      int pageSize,
      bool paged,
      int pageNumber,
      int offset,
      List<Sort> sort});
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unpaged = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? pageNumber = null,
    Object? offset = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<Sort>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageableImplCopyWith<$Res>
    implements $PageableCopyWith<$Res> {
  factory _$$PageableImplCopyWith(
          _$PageableImpl value, $Res Function(_$PageableImpl) then) =
      __$$PageableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool unpaged,
      int pageSize,
      bool paged,
      int pageNumber,
      int offset,
      List<Sort> sort});
}

/// @nodoc
class __$$PageableImplCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$PageableImpl>
    implements _$$PageableImplCopyWith<$Res> {
  __$$PageableImplCopyWithImpl(
      _$PageableImpl _value, $Res Function(_$PageableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unpaged = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? pageNumber = null,
    Object? offset = null,
    Object? sort = null,
  }) {
    return _then(_$PageableImpl(
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value._sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<Sort>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableImpl implements _Pageable {
  const _$PageableImpl(
      {required this.unpaged,
      required this.pageSize,
      required this.paged,
      required this.pageNumber,
      required this.offset,
      required final List<Sort> sort})
      : _sort = sort;

  factory _$PageableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableImplFromJson(json);

  @override
  final bool unpaged;
  @override
  final int pageSize;
  @override
  final bool paged;
  @override
  final int pageNumber;
  @override
  final int offset;
  final List<Sort> _sort;
  @override
  List<Sort> get sort {
    if (_sort is EqualUnmodifiableListView) return _sort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sort);
  }

  @override
  String toString() {
    return 'Pageable(unpaged: $unpaged, pageSize: $pageSize, paged: $paged, pageNumber: $pageNumber, offset: $offset, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            const DeepCollectionEquality().equals(other._sort, _sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unpaged, pageSize, paged,
      pageNumber, offset, const DeepCollectionEquality().hash(_sort));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      __$$PageableImplCopyWithImpl<_$PageableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableImplToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {required final bool unpaged,
      required final int pageSize,
      required final bool paged,
      required final int pageNumber,
      required final int offset,
      required final List<Sort> sort}) = _$PageableImpl;

  factory _Pageable.fromJson(Map<String, dynamic> json) =
      _$PageableImpl.fromJson;

  @override
  bool get unpaged;
  @override
  int get pageSize;
  @override
  bool get paged;
  @override
  int get pageNumber;
  @override
  int get offset;
  @override
  List<Sort> get sort;
  @override
  @JsonKey(ignore: true)
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  String get direction => throw _privateConstructorUsedError;
  String get nullHandling => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  String get property => throw _privateConstructorUsedError;
  bool get ignoreCase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call(
      {String direction,
      String nullHandling,
      bool ascending,
      String property,
      bool ignoreCase});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? nullHandling = null,
    Object? ascending = null,
    Object? property = null,
    Object? ignoreCase = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      nullHandling: null == nullHandling
          ? _value.nullHandling
          : nullHandling // ignore: cast_nullable_to_non_nullable
              as String,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      ignoreCase: null == ignoreCase
          ? _value.ignoreCase
          : ignoreCase // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String direction,
      String nullHandling,
      bool ascending,
      String property,
      bool ignoreCase});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? nullHandling = null,
    Object? ascending = null,
    Object? property = null,
    Object? ignoreCase = null,
  }) {
    return _then(_$SortImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      nullHandling: null == nullHandling
          ? _value.nullHandling
          : nullHandling // ignore: cast_nullable_to_non_nullable
              as String,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      ignoreCase: null == ignoreCase
          ? _value.ignoreCase
          : ignoreCase // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortImpl implements _Sort {
  const _$SortImpl(
      {required this.direction,
      required this.nullHandling,
      required this.ascending,
      required this.property,
      required this.ignoreCase});

  factory _$SortImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortImplFromJson(json);

  @override
  final String direction;
  @override
  final String nullHandling;
  @override
  final bool ascending;
  @override
  final String property;
  @override
  final bool ignoreCase;

  @override
  String toString() {
    return 'Sort(direction: $direction, nullHandling: $nullHandling, ascending: $ascending, property: $property, ignoreCase: $ignoreCase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.nullHandling, nullHandling) ||
                other.nullHandling == nullHandling) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.ignoreCase, ignoreCase) ||
                other.ignoreCase == ignoreCase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, direction, nullHandling, ascending, property, ignoreCase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortImplToJson(
      this,
    );
  }
}

abstract class _Sort implements Sort {
  const factory _Sort(
      {required final String direction,
      required final String nullHandling,
      required final bool ascending,
      required final String property,
      required final bool ignoreCase}) = _$SortImpl;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$SortImpl.fromJson;

  @override
  String get direction;
  @override
  String get nullHandling;
  @override
  bool get ascending;
  @override
  String get property;
  @override
  bool get ignoreCase;
  @override
  @JsonKey(ignore: true)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
